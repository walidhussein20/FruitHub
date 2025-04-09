import 'package:dartz/dartz.dart';
import 'package:fruites_e_commerce/core/errors/failure.dart';
import 'package:fruites_e_commerce/features/auth/domain/entities/user_entity.dart';

abstract class AuthRepo {
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword(
      String email, String password, String name);

  Future<Either<Failure, UserEntity>> signInWithEmailAndPassword(
      String email, String password);
}
