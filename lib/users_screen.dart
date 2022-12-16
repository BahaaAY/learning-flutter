import 'package:flutter/material.dart';

class UsersScreen extends StatelessWidget {
  List<UserModel> users = [
    UserModel(1, "User1", "+961 71 123 456"),
    UserModel(2, "User2", "+961 71 123 456"),
    UserModel(3, "User3", "+961 71 123 456"),
    UserModel(4, "User4", "+961 71 123 456"),
    UserModel(5, "User5", "+961 71 123 456"),
    UserModel(6, "User6", "+961 71 123 456"),
    UserModel(7, "User7", "+961 71 123 456"),
    UserModel(8, "User8", "+961 71 123 456"),
    UserModel(9, "User9", "+961 71 123 456"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Users"),
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => BuildUserItem(users[index]),
            separatorBuilder: (context, index) => Container(
                  width: double.infinity,
                  color: Colors.grey[300],
                  height: 1,
                ),
            itemCount: users.length));
  }

  Widget BuildUserItem(UserModel user) => Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            CircleAvatar(
              child: Text(
                "${user.id}",
                style: TextStyle(
                  fontSize: 42.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              radius: 32.0,
            ),
            SizedBox(
              width: 10.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "${user.name}",
                  style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "${user.phone}",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                )
              ],
            )
          ],
        ),
      );

}
class UserModel {
  final int id;
  final String name;
  final String phone;

  UserModel(this.id, this.name, this.phone);
}
