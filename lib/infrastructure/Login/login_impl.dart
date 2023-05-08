import 'package:chat_app_bloc/domain/core/api_endpoints.dart';
import 'package:chat_app_bloc/domain/core/api_services.dart';
import 'package:chat_app_bloc/domain/core/failures/main_failure.dart';
import 'package:chat_app_bloc/domain/login/login_service.dart';
import 'package:dartz/dartz.dart';
import 'package:chat_app_bloc/domain/login/model/login_model.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: LoginService)
class LoginImpl implements LoginService {
  @override
  Future<Either<MainFailure, Login>> login(
      {required String userName, required String password}) async {
    dynamic data = {"username": userName, "password": password};

    final response = await DioServices()
        .postWithoutToken(url: ApiEndPoints.login, data: data);

    try {
      if (response.statusCode == 200) {
        final result = Login.fromJson(response.data);
        return Right(result);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      return const Left(MainFailure.clientFailure());
    }
  }
}
// 