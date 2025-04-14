import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:fruites_e_commerce/core/errors/exceptions.dart';
import 'package:fruites_e_commerce/core/errors/failure.dart';
import 'package:fruites_e_commerce/core/services/database_service.dart';
import 'package:fruites_e_commerce/core/services/firebase_auth_services.dart';
import 'package:fruites_e_commerce/core/utils/backend_endpoint.dart';
import 'package:fruites_e_commerce/features/auth/data/models/user_model.dart';
import 'package:fruites_e_commerce/features/auth/domain/entities/user_entity.dart';
import 'package:fruites_e_commerce/features/auth/domain/repos/auth_repo.dart';

class AuthRepoImpl extends AuthRepo {
  final FirebaseAuthServices firebaseAuthServices;
  final DatabaseService databaseService;
  AuthRepoImpl(
      {required this.firebaseAuthServices, required this.databaseService});
  @override
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword(
      String email, String password, String name) async {
    User? user;
    try {
      user = await firebaseAuthServices.createUserWithEmailAndPassword(
          email: email, password: password);
      var userEntity = UserModel(email: email, uId: user.uid, name: name);
      await adduserData(user: userEntity);

      return Right(userEntity);
    } on CustomException catch (e) {
      if (user != null) {
        await FirebaseAuthServices().deleteUser();
      }
      return left(serverFailure(e.message));
    } catch (e) {
      await deletUser(user);
      log('Exception in AuthRepo.createUserWithEmailAndPassword: $e');
      return left(
        serverFailure('فشل إنشاء المستخدم، يرجى المحاولة مرة أخرى'),
      );
    }
  }

  Future<void> deletUser(User? user) async {
    if (user != null) {
      await FirebaseAuthServices().deleteUser();
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signInWithEmailAndPassword(
      String email, String password) async {
    try {
      var user = await firebaseAuthServices.signInWithEmailAndPassword(
          email: email, password: password);
      var userEntity = await getUserData(uId: user.uid);
      return Right(userEntity);
    } on CustomException catch (e) {
      return left(serverFailure(e.message));
    } catch (e) {
      log('Exception in AuthRepo.signInWithEmailAndPassword: $e');
      return left(
        serverFailure('فشل إنشاء المستخدم، يرجى المحاولة مرة أخرى'),
      );
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signInWithGoogle() async {
    User? user;
    try {
      user = await firebaseAuthServices.signInWithGoogle();
      var userEntity = UserModel.fromFirebase(user);
      var isUserExist = await databaseService.checkIfDataExists(
          path: BackendEndpoint.isUserEsists, documentId: user.uid);
      if (isUserExist) {
        getUserData(uId: user.uid);
      } else {
        adduserData(user: userEntity);
      }

      return Right(userEntity);
    } catch (e) {
      await deletUser(user);
      log('Exception in AuthRepo.signInWithGoogle: $e');
      return left(
        serverFailure('حدث خطأ ما، يرجى المحاولة مرة أخرى'),
      );
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signInFacebook() async {
    User? user;
    try {
      user = await firebaseAuthServices.signInWithFacebook();
      var userEntity = UserModel.fromFirebase(user);
      var isUserExist = await databaseService.checkIfDataExists(
          path: BackendEndpoint.isUserEsists, documentId: user.uid);
      if (isUserExist) {
        getUserData(uId: user.uid);
      } else {
        adduserData(user: userEntity);
      }

      return Right(userEntity);
    } catch (e) {
      await deletUser(user);
      log('Exception in AuthRepo.signInWithGoogle: $e');
      return left(
        serverFailure('حدث خطأ ما، يرجى المحاولة مرة أخرى'),
      );
    }
  }

  @override
  Future adduserData({required UserEntity user}) async {
    await databaseService.addData(
      data: user.tomap(),
      path: BackendEndpoint.addUserData,
      documentId: user.uId,
    );
  }

  @override
  Future<UserEntity> getUserData({required String uId}) async {
    var userData = await databaseService.getData(
        path: BackendEndpoint.getUserData, documentId: uId);
    return UserModel.fromJson(userData);
  }
}
