import 'package:chat_app_bloc/application/login/login_bloc.dart';
import 'package:chat_app_bloc/application/users/users_bloc.dart';
import 'package:chat_app_bloc/domain/core/di/injectable.dart';
import 'package:chat_app_bloc/presentation/home/home_screen.dart';
import 'package:chat_app_bloc/presentation/login/login_screen.dart';
import 'package:chat_app_bloc/routing/route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////
///              Flutter version    3.7.3             ////
/// //////////////////////////////////////////////////////
/// //////////////////////////////////////////////////////

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getIt<LoginBloc>()),
        BlocProvider(create: (context) => getIt<UsersBloc>())
      ],
      child: MaterialApp(
        onGenerateRoute: getRoute,
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const HomeScreen(),
      ),
    );
  }
}
