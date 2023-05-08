import 'package:chat_app_bloc/application/users/users_bloc.dart';
import 'package:chat_app_bloc/domain/login/test.dart';
import 'package:chat_app_bloc/presentation/widgets/user_card.dart';
import 'package:chat_app_bloc/routing/routing_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  void navigateToNextPage(BuildContext context) {
    Navigator.pushNamed(context, RoutingName.users);

    context.read<UsersBloc>().add(UsersEvent.getUsers());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                // Navigator.pushNamedAndRemoveUntil(
                //     context, RoutingName.login, (route) => false);
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) {
                    return JobList();
                  },
                ));
              },
              child: const Icon(Icons.logout),
            ),
          )
        ],
      ),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {},
            child: UserCard(
              fullName: "he",
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal,
        onPressed: () => navigateToNextPage(context),
        child: Icon(Icons.contact_page),
      ),
    );
  }
}
