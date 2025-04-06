import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruites_e_commerce/features/auth/domain/entities/user_entity.dart';

class UserModel extends UserEntity {
  UserModel({required super.uId, required super.email, required super.name});

  factory UserModel.fromFirebase(User user) {
    return UserModel(
        uId: user.uid, email: user.email!, name: user.displayName!);
  }
}
