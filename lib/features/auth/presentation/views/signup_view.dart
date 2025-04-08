import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruites_e_commerce/core/services/get_it_services.dart';
import 'package:fruites_e_commerce/core/widgets/custom_app_bar.dart';
import 'package:fruites_e_commerce/features/auth/domain/repos/auth_repo.dart';
import 'package:fruites_e_commerce/features/auth/presentation/cubits/signup_cubit/signup_cubit.dart';
import 'package:fruites_e_commerce/features/auth/presentation/views/widgets/signup_view_body_bloc_consumer.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});
  static const routeName = 'signup_view';
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignupCubit(getIt<AuthRepo>()),
      child: Scaffold(
        appBar: buildAppBar(context, title: 'حساب جديد'),
        body: SignUpViewBodyBlocConsumer(),
      ),
    );
  }
}
