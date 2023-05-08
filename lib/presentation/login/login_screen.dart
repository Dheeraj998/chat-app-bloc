import 'package:chat_app_bloc/application/login/login_bloc.dart';
import 'package:chat_app_bloc/core/constant.dart';
import 'package:chat_app_bloc/presentation/widgets/cb_button.dart';
import 'package:chat_app_bloc/presentation/widgets/cb_textfield.dart';
import 'package:chat_app_bloc/routing/routing_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final username = context.read<LoginBloc>().usernameController;
    final password = context.read<LoginBloc>().passwordController;
    return Scaffold(
      body: Center(
        child: BlocConsumer<LoginBloc, LoginState>(
          listener: (context, state) {
            if (state.data != null) {
              Navigator.pushNamedAndRemoveUntil(
                  context, RoutingName.home, (route) => false);
            }
          },
          builder: (context, state) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CBTextField(
                    controller: context.read<LoginBloc>().usernameController,
                    hintText: "username"),
                kHeight20,
                CBTextField(
                    controller: context.read<LoginBloc>().passwordController,
                    hintText: "password"),
                kHeight20,
                CBButton(
                    text: "Login",
                    loading: state.loading,
                    onTap: () {
                      context.read<LoginBloc>().add(LoginEvent.login(
                          username: username.text, password: password.text));
                    })
              ],
            );
          },
        ),
      ),
    );
  }
}
