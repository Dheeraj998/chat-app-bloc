import 'package:flutter/material.dart';

class UserCard extends StatelessWidget {
  final String fullName;
  const UserCard({
    super.key,
    required this.fullName,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.teal,
          child: Icon(Icons.person_2),
        ),
        title: Text(fullName),
      ),
    );
  }
}
