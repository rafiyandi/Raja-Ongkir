/**
 * Author: Damodar Lohani
 * profile: https://github.com/lohanidamodar
  */

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_bloc/application/auth/cubit/auth_cubit.dart';
import 'package:learn_bloc/domain/auth/model/login_request.dart';

import '../home/home_page.dart';

class SignInPage extends StatefulWidget {
  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  // static final String path = "lib/src/pages/login/login1.dart";
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => AuthCubit(),
        child: BlocConsumer<AuthCubit, AuthState>(listener: (context, state) {
          if (state is AuthError) {
            showDialog(
                context: context,
                builder: (context) => AlertDialog(
                      title: const Text("Error"),
                      content: Text(state.errorMessage),
                    ));
          } else if (state is AuthLoading) {
            print('loading');
          } else if (state is AuthLoginSuccess) {
            context.read<AuthCubit>().saveUserToLocal(state.dataLogin);
            print(state.dataLogin);
          } else if (state is AuthSuccesSaveData) {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => HomePage()));
          }

          //NOTe: Membuat snackbar ketika error
          // if (state is AuthFailure) {
          //   Scaffold.of(context).showSnackBar(
          //     SnackBar(
          //       content: Text(state.error),
          //     ),
          //   );
          // }
        }, builder: (context, state) {
          return Container(
            padding: const EdgeInsets.all(20.0),
            color: Colors.grey.shade800,
            child: ListView(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    const SizedBox(
                      height: 50,
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    ListTile(
                        title: TextField(
                      controller: _emailController,
                      style: const TextStyle(color: Colors.white),
                      decoration: const InputDecoration(
                          hintText: "Email address:",
                          hintStyle: TextStyle(color: Colors.white70),
                          border: InputBorder.none,
                          icon: Icon(
                            Icons.email,
                            color: Colors.white30,
                          )),
                    )),
                    Divider(
                      color: Colors.grey.shade600,
                    ),
                    ListTile(
                        title: TextField(
                      controller: _passwordController,
                      style: const TextStyle(color: Colors.white),
                      decoration: const InputDecoration(
                          hintText: "Password:",
                          hintStyle: const TextStyle(color: Colors.white70),
                          border: InputBorder.none,
                          icon: const Icon(
                            Icons.lock,
                            color: Colors.white30,
                          )),
                    )),
                    Divider(
                      color: Colors.grey.shade600,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: (state is AuthLoading)
                              ? _loginLoadingButton()
                              : _loginButton(context),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Text(
                      'Forgot your password?',
                      style: TextStyle(color: Colors.grey.shade500),
                    )
                  ],
                ),
              ],
            ),
          );
        }),
      ),
    );
  }

  ElevatedButton _loginButton(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(primary: Colors.cyan),
      onPressed: () {
        final _request =
            LoginRequest(email: "eve.holt@reqres.in", password: "sdf");
        context.read<AuthCubit>().signInUser(_request);
      },
      child: const Text(
        'Login',
        style: const TextStyle(color: Colors.white70, fontSize: 16.0),
      ),
    );
  }

  ElevatedButton _loginLoadingButton() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(primary: Colors.cyan),
      onPressed: null,
      child: const CircularProgressIndicator(),
    );
  }
}
