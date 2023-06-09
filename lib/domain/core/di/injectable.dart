import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:chat_app_bloc/domain/core/di/injectable.config.dart';

final getIt = GetIt.instance;

@InjectableInit()
Future<void> configureInjection() async {
  getIt.init();
}
