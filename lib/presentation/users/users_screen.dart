import 'package:chat_app_bloc/application/users/users_bloc.dart';
import 'package:chat_app_bloc/domain/login/model/login_model.dart';
import 'package:chat_app_bloc/presentation/widgets/user_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UsersScreen extends StatelessWidget {
  const UsersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BlocBuilder<UsersBloc, UsersState>(
        builder: (context, state) {
          if (state.isLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (state.isError) {
            return const Center(
              child: Text("error occured"),
            );
          }
          return ListView.builder(
            itemCount: state.usersList?.users?.length,
            itemBuilder: (context, index) {
              final user = state.usersList?.users?[index];
              print("gdggdgdg $user");
              return UserCard(
                fullName: user?.fullName ?? "",
              );
            },
          );
        },
      ),
    );
  }
}
