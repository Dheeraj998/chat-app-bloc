import 'package:chat_app_bloc/domain/login/login_service.dart';
import 'package:chat_app_bloc/domain/login/model/login_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LoginService loginService;
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  LoginBloc(this.loginService) : super(LoginState.initial()) {
    on<_Login>((event, emit) async {
      emit(const LoginState(loading: true, error: false, data: null));

      final result = await loginService.login(
          userName: event.username, password: event.password);

      result.fold((l) => emit(const LoginState(loading: false, error: true)),
          (r) => emit(LoginState(loading: false, error: false, data: r)));
    });
  }
}
