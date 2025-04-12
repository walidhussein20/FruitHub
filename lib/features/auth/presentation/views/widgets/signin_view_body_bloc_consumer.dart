import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruites_e_commerce/core/helper_functions/build_error_bar.dart';
import 'package:fruites_e_commerce/features/auth/presentation/cubits/cubit/signin_cubit.dart';
import 'package:fruites_e_commerce/features/auth/presentation/cubits/cubit/signin_state.dart';
import 'package:fruites_e_commerce/features/auth/presentation/views/widgets/signin_view_body.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class LoginViewBodyBlocConsumer extends StatelessWidget {
  const LoginViewBodyBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SigninCubit, SigninState>(
      listener: (context, state) {
        if (state is SigninSuccess) {}
        if (state is SigninFailure) {
          buildErrorBar(context, state.message);
        }
      },
      builder: (context, state) {
        return ModalProgressHUD(
            inAsyncCall: state is SigninLoading ? true : false,
            child: SignInViewBody());
      },
    );
  }
}
