import 'package:bloc/bloc.dart';
import 'package:fruites_e_commerce/features/auth/domain/repos/auth_repo.dart';
import 'package:fruites_e_commerce/features/auth/presentation/cubits/cubit/signin_state.dart';

class SigninCubit extends Cubit<SigninState> {
  SigninCubit(this.authRepo) : super(SigninInitial());

  final AuthRepo authRepo;
  Future<void> signInWithEmailAndPassword(String email, String password) async {
    emit(SigninLoading());
    var result = await authRepo.signInWithEmailAndPassword(email, password);
    result.fold(
      (failure) => emit(
        SigninFailure(failure.message),
      ),
      (userEntity) => emit(
        SigninSuccess(userEntity),
      ),
    );
  }

  Future<void> signInWithGoogle() async {
    emit(SigninLoading());
    var result = await authRepo.signInWithGoogle();
    result.fold(
      (failure) => emit(
        SigninFailure(failure.message),
      ),
      (userEntity) => emit(
        SigninSuccess(userEntity),
      ),
    );
  }

  Future<void> signInFacebook() async {
    emit(SigninLoading());
    var result = await authRepo.signInFacebook();
    result.fold(
      (failure) => emit(
        SigninFailure(failure.message),
      ),
      (userEntity) => emit(
        SigninSuccess(userEntity),
      ),
    );
  }
}
