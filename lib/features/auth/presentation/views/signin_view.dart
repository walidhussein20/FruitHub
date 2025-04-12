import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruites_e_commerce/core/services/get_it_services.dart';

import 'package:fruites_e_commerce/core/widgets/custom_app_bar.dart';
import 'package:fruites_e_commerce/features/auth/domain/repos/auth_repo.dart';
import 'package:fruites_e_commerce/features/auth/presentation/cubits/cubit/signin_cubit.dart';

import 'package:fruites_e_commerce/features/auth/presentation/views/widgets/signin_view_body_bloc_consumer.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});
  static const routeName = 'login';
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SigninCubit(getIt<AuthRepo>()),
      child: Scaffold(
        appBar: buildAppBar(context, title: 'تسجيل دخول'),
        body: LoginViewBodyBlocConsumer(),
      ),
    );
  }
}
