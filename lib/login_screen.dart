import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {

  var emailController = TextEditingController();
  var passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Screen"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Login",
              style: TextStyle(
                fontSize: 60.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            TextFormField(
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: "Email Address",
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.email),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            TextFormField(
              obscureText: true,
              controller: passController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  labelText: "Password",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.key),
                  suffixIcon: Icon(Icons.remove_red_eye)),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              width: double.infinity,
              child: MaterialButton(
                color: Colors.blue,
                onPressed: () {
                  print("Email : " + emailController.text);
                  print("Password : " + passController.text);
                },
                child: Text(
                  "Login",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don\'t have an account? "
                ),
                TextButton(onPressed: (){}, child: Text("Register!"))
              ],
            )
          ],
        ),
      ),
    );
  }
}
