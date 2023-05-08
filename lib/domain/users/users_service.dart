import 'package:chat_app_bloc/domain/core/failures/main_failure.dart';
import 'package:chat_app_bloc/domain/login/model/login_model.dart';
import 'package:chat_app_bloc/domain/login/users/users_model.dart';
import 'package:dartz/dartz.dart';

abstract class UserServices {
  Future<Either<MainFailure, UsersModel>> getUsers();
}
