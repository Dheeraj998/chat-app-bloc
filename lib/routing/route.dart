import 'package:chat_app_bloc/presentation/home/home_screen.dart';
import 'package:chat_app_bloc/presentation/login/login_screen.dart';
import 'package:chat_app_bloc/presentation/users/users_screen.dart';
import 'package:chat_app_bloc/routing/routing_name.dart';
import 'package:flutter/material.dart';

Route<dynamic>? getRoute(RouteSettings settings) {
  switch (settings.name) {
    case RoutingName.login:
      return _pageRoute(settings, const LoginScreen());
    case RoutingName.home:
      return _pageRoute(settings, const HomeScreen());
    case RoutingName.users:
      return _pageRoute(settings, const UsersScreen());
    default:
      return _pageRoute(settings, const LoginScreen());
  }
}

MaterialPageRoute _pageRoute(RouteSettings settings, Widget child) {
  return MaterialPageRoute(
    settings: settings,
    builder: (ctx) => child,
  );
}
