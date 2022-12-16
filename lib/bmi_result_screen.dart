import 'package:flutter/material.dart';

class BmiResultScreen extends StatelessWidget {
  bool gender = true;
  int age = 18;
  int weight = 60;
  double result = 0.0;


  BmiResultScreen(this.gender, this.age, this.weight, this.result);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Result"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Gender: ${gender ? "Male" : "Female"}",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26.0),
            ),
            Text(
              "Age: ${age}",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26.0),
            ),
            Text(
              "Weight: ${weight}",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26.0),
            ),
            Text(
              "Result: ${result.round()}",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26.0),
            ),
          ],
        ),
      ),
    );
  }
}
