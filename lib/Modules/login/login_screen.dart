import 'package:flutter/material.dart';
import 'package:proj1/shared/components/components.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var emailController = TextEditingController();

  var passController = TextEditingController();

  var formKey = GlobalKey<FormState>();
  bool secureText = true;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Screen"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Form(
            key: formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
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
                defaultFormField(
                    prefix: Icon(Icons.email),
                    controller: emailController,
                    inputType: TextInputType.emailAddress,
                    validate: (String? value) {
                      if(value!.isEmpty)
                      {
                        return "Email cant be empty!";
                      }
                      return null;
                    },
                    label: "Email"),
                SizedBox(
                  height: 15.0,
                ),
                defaultFormField(
                  isPassword: secureText,
                    prefix: Icon(Icons.key),
                    suffix: secureText? Icon(Icons.visibility): Icon(Icons.visibility_off),
                    controller: passController,
                    inputType: TextInputType.visiblePassword,
                    suffixPressed: (){
                    setState(() {
                      secureText=!secureText;
                    });
                    },
                    validate: (String? value) {
                      if(value!.isEmpty)
                        {
                          return "Password cant be empty!";
                        }
                      return null;
                    },
                    label: "Password"),
                SizedBox(
                  height: 10.0,
                ),
                defaultButton(
                    function: () {
                      if(formKey.currentState!.validate())
                        {
                          print("Email : " + emailController.text);
                          print("Password : " + passController.text);
                        }
                    },
                    radius: 22.0,
                    isUpperCase: false,
                    text: "Login"),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don\'t have an account? "),
                    TextButton(onPressed: () {}, child: Text("Register!"))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
