import 'package:dartz/dartz.dart';

import 'package:fruites_e_commerce/core/errors/exceptions.dart';
import 'package:fruites_e_commerce/core/errors/failure.dart';
import 'package:fruites_e_commerce/core/services/firebase_auth_services.dart';
import 'package:fruites_e_commerce/features/auth/data/models/user_model.dart';
import 'package:fruites_e_commerce/features/auth/domain/entities/user_entity.dart';
import 'package:fruites_e_commerce/features/auth/domain/repos/auth_repo.dart';

class AuthRepoImmpl extends AuthRepo {
  final FirebaseAuthServices firebaseAuthServices;
  AuthRepoImmpl(this.firebaseAuthServices);
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
      return left(
        serverFailure('Failed to create user, please try again.'),
      );
    }
  }
}
