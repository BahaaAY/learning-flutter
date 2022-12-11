import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            print("Menu Pressed!");
          },
        ),
        title: Text("First App"),
        actions: [
          Icon(Icons.zoom_in),
        ],
      ),
      body: Row(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  "First Text",
                  style: TextStyle(
                    fontSize: 30.0,
                  ),
                ),
                Text(
                  "Second Text",
                  style: TextStyle(
                    fontSize: 30.0,
                  ),
                ),
                Text(
                  "Third Text",
                  style: TextStyle(
                    fontSize: 30.0,
                  ),
                ),
                Text(
                  "Fourth Text",
                  style: TextStyle(
                    fontSize: 30.0,
                  ),
                ),
                Text(
                  "First Text",
                  style: TextStyle(
                    fontSize: 30.0,
                  ),
                ),
                Text(
                  "First Text",
                  style: TextStyle(
                    fontSize: 30.0,
                  ),
                ),
                Text(
                  "First Text",
                  style: TextStyle(
                    fontSize: 30.0,
                  ),
                ),
                Text(
                  "First Text",
                  style: TextStyle(
                    fontSize: 30.0,
                  ),
                ),
                Text(
                  "First Text",
                  style: TextStyle(
                    fontSize: 30.0,
                  ),
                ),
                Text(
                  "First Text",
                  style: TextStyle(
                    fontSize: 30.0,
                  ),
                ),
                Text(
                  "First Text",
                  style: TextStyle(
                    fontSize: 30.0,
                  ),
                ),
                Text(
                  "First Text",
                  style: TextStyle(
                    fontSize: 30.0,
                  ),
                ),
                Text(
                  "First Text",
                  style: TextStyle(
                    fontSize: 30.0,
                  ),
                ),
                Text(
                  "First Text",
                  style: TextStyle(
                    fontSize: 30.0,
                  ),
                ),
                Text(
                  "First Text",
                  style: TextStyle(
                    fontSize: 30.0,
                  ),
                ),
                Text(
                  "First Text",
                  style: TextStyle(
                    fontSize: 30.0,
                  ),
                ),
                Text(
                  "First Text",
                  style: TextStyle(
                    fontSize: 30.0,
                  ),
                ),
                Text(
                  "First Text",
                  style: TextStyle(
                    fontSize: 30.0,
                  ),
                ),
                Text(
                  "First Text",
                  style: TextStyle(
                    fontSize: 30.0,
                  ),
                ),
                Text(
                  "First Text",
                  style: TextStyle(
                    fontSize: 30.0,
                  ),
                ),
                Text(
                  "First Text",
                  style: TextStyle(
                    fontSize: 30.0,
                  ),
                ),
                Text(
                  "First Text",
                  style: TextStyle(
                    fontSize: 30.0,
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              Expanded(
                child: Container(
                  color: Colors.red,
                  child: Text(
                    "First Widget",
                    style: TextStyle(fontSize: 30.0, color: Colors.white),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.blue,
                  child: Text(
                    "Second Widget",
                    style: TextStyle(fontSize: 30.0, color: Colors.white),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.green,
                  child: Text(
                    "Third Widget",
                    style: TextStyle(fontSize: 30.0, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
