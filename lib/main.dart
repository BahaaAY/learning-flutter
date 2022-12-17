import 'package:flutter/material.dart';
import 'package:proj1/modules/bmi/bmi_result_screen.dart';
import 'package:proj1/modules/bmi/bmi_screen.dart';
import 'package:proj1/modules/counter/counter_screen.dart';
import 'package:proj1/modules/home/home_screen.dart';
import 'package:proj1/modules/messenger/users_screen.dart';

import 'modules/login/login_screen.dart';
import 'modules/messenger/messenger_screen.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }

}

