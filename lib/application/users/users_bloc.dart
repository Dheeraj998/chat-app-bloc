import 'package:chat_app_bloc/domain/login/users/users_model.dart';
import 'package:chat_app_bloc/domain/users/users_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'users_event.dart';
part 'users_state.dart';
part 'users_bloc.freezed.dart';

@injectable
class UsersBloc extends Bloc<UsersEvent, UsersState> {
  final UserServices userServices;
  UsersBloc(this.userServices) : super(UsersState.inital()) {
    on<_GetUsers>((event, emit) async {
      print("here 1");
      emit(const UsersState(isLoading: true, usersList: null, isError: false));
      print("here 2");

      final result = await userServices.getUsers();
      print("bloc page $result");

      result.fold(
        (l) => emit(
            const UsersState(isLoading: false, usersList: null, isError: true)),
        (r) => emit(UsersState(isLoading: false, usersList: r, isError: false)),
      );
    });
  }
}
