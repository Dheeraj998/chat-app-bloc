part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState(
      {required bool loading, Login? data, required bool error}) = _Initial;

  factory LoginState.initial() {
    return const LoginState(loading: false, data: null, error: false);
  }
}
