// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:chat_app_bloc/application/login/login_bloc.dart' as _i8;
import 'package:chat_app_bloc/application/users/users_bloc.dart' as _i7;
import 'package:chat_app_bloc/domain/login/login_service.dart' as _i3;
import 'package:chat_app_bloc/domain/users/users_service.dart' as _i5;
import 'package:chat_app_bloc/infrastructure/Login/login_impl.dart' as _i4;
import 'package:chat_app_bloc/infrastructure/users/users_impl.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.LoginService>(() => _i4.LoginImpl());
    gh.lazySingleton<_i5.UserServices>(() => _i6.UsersImpl());
    gh.factory<_i7.UsersBloc>(() => _i7.UsersBloc(gh<_i5.UserServices>()));
    gh.factory<_i8.LoginBloc>(() => _i8.LoginBloc(gh<_i3.LoginService>()));
    return this;
  }
}
