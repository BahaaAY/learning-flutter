import 'package:flutter/material.dart';
import 'package:proj1/counter_screen.dart';
import 'package:proj1/home_screen.dart';
import 'package:proj1/users_screen.dart';

import 'login_screen.dart';
import 'messenger_screen.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CounterScreen(),
    );
  }

}

