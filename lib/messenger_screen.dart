import 'package:flutter/material.dart';

class MessengerScreen extends StatelessWidget {
  const MessengerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Row(
          children: [
            CircleAvatar(
              radius: 25.0,
              backgroundImage: NetworkImage(
                  "https://cdn-icons-png.flaticon.com/512/3135/3135715.png"),
            ),
            SizedBox(
              width: 15.0,
            ),
            Text(
              "Chats",
              style: TextStyle(
                color: Colors.black,
                fontSize: 28.0,
              ),
            )
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: CircleAvatar(
              radius: 22.0,
              child: Icon(
                Icons.camera_alt,
                size: 20,
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: CircleAvatar(
              radius: 22.0,
              child: Icon(
                Icons.edit,
                size: 20,
              ),
            ),
          )
        ],
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
    );
  }
}
