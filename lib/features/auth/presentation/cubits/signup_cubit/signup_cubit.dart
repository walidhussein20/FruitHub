import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:fruites_e_commerce/features/auth/domain/entities/user_entity.dart';
import 'package:fruites_e_commerce/features/auth/domain/repos/auth_repo.dart';
import 'package:meta/meta.dart';

part 'signup_state.dart';

class SignupCubit extends Cubit<SignupState> {
  SignupCubit(this.authRepo) : super(SignupInitial());
  final AuthRepo authRepo;
  Future<void> createUserWithEmailAndPassword(
      String email, String password, String name) async {
    emit(SignupLoading());
    final result =
        await authRepo.createUserWithEmailAndPassword(email, password, name);
    result.fold(
      (failure) => emit(
        SignupFailure(failure.message),
      ),
      (userEntity) => emit(
        SignupSuccess(userEntity),
      ),
    );
  }
}
