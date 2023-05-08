import 'package:chat_app_bloc/domain/core/api_endpoints.dart';
import 'package:chat_app_bloc/domain/core/api_services.dart';
import 'package:chat_app_bloc/domain/login/model/login_model.dart';
import 'package:chat_app_bloc/domain/core/failures/main_failure.dart';
import 'package:chat_app_bloc/domain/login/users/users_model.dart';
import 'package:chat_app_bloc/domain/users/users_service.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: UserServices)
class UsersImpl implements UserServices {
  @override
  Future<Either<MainFailure, UsersModel>> getUsers() async {
    final response =
        await DioServices().getWithoutToken(url: ApiEndPoints.getUsers);

    print(response.data);

    try {
      if (response.statusCode == 200) {
        final result = UsersModel.fromJson(response.data);

        return Right(result);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      return const Left(MainFailure.clientFailure());
    }
  }
}
