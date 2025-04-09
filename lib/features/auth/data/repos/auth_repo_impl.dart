import 'dart:developer';

import 'package:dartz/dartz.dart';

import 'package:fruites_e_commerce/core/errors/exceptions.dart';
import 'package:fruites_e_commerce/core/errors/failure.dart';
import 'package:fruites_e_commerce/core/services/firebase_auth_services.dart';
import 'package:fruites_e_commerce/features/auth/data/models/user_model.dart';
import 'package:fruites_e_commerce/features/auth/domain/entities/user_entity.dart';
import 'package:fruites_e_commerce/features/auth/domain/repos/auth_repo.dart';

class AuthRepoImpl extends AuthRepo {
  final FirebaseAuthServices firebaseAuthServices;
  AuthRepoImpl(this.firebaseAuthServices);
  @override
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword(
      String email, String password, String name) async {
    try {
      var user = await firebaseAuthServices.createUserWithEmailAndPassword(
          email: email, password: password);

      return Right(UserModel.fromFirebase(user));
    } on CustomException catch (e) {
      return left(serverFailure(e.message));
    } catch (e) {
      log('Exception in AuthRepo.createUserWithEmailAndPassword: $e');
      return left(
        serverFailure('فشل إنشاء المستخدم، يرجى المحاولة مرة أخرى'),
      );
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signInWithEmailAndPassword(
      String email, String password) async {
    try {
      var user = await firebaseAuthServices.signInWithEmailAndPassword(
          email: email, password: password);
      return Right(UserModel.fromFirebase(user));
    } on CustomException catch (e) {
      return left(serverFailure(e.message));
    } catch (e) {
      log('Exception in AuthRepo.signInWithEmailAndPassword: $e');
      return left(
        serverFailure('فشل إنشاء المستخدم، يرجى المحاولة مرة أخرى'),
      );
    }
  }
}
