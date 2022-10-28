import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_bloc/application/auth/cubit/auth_cubit.dart';
import 'package:learn_bloc/presentation/home/home_page.dart';
import 'package:learn_bloc/presentation/sign_in/sign_in_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthCubit()..loadUserFromLocal(),
      child: BlocListener<AuthCubit, AuthState>(
        listener: (context, state) {
          if (state is AuthLoginSuccess) {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => HomePage()));
          } else if (state is AuthError) {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => SignInPage()));
          }
        },
        child: Scaffold(
          body: Center(
            child: CircularProgressIndicator(),
          ),
        ),
      ),
    );
  }
}
