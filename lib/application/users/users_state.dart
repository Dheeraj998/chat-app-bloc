part of 'users_bloc.dart';

@freezed
class UsersState with _$UsersState {
  const factory UsersState(
      {required bool isLoading,
      required UsersModel? usersList,
      required bool isError}) = _Initial;

  factory UsersState.inital() {
    return const UsersState(isLoading: false, usersList: null, isError: false);
  }
}
