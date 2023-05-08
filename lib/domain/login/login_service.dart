import 'package:chat_app_bloc/domain/core/failures/main_failure.dart';
import 'package:chat_app_bloc/domain/login/model/login_model.dart';
import 'package:dartz/dartz.dart';

abstract class LoginService {
  Future<Either<MainFailure, Login>> login(
      {required String userName, required String password});
}
