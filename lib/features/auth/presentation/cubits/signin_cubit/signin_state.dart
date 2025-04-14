import 'package:flutter/material.dart';

import '../../../domain/entities/user_entity.dart';

@immutable
sealed class SigninState {}

final class SigninInitial extends SigninState {}

final class SigninLoading extends SigninState {}

final class SigninSuccess extends SigninState {
  final UserEntity userEntity;
  SigninSuccess(this.userEntity);
}

final class SigninFailure extends SigninState {
  final String message;
  SigninFailure(this.message);
}
