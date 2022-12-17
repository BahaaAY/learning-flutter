import 'package:flutter/material.dart';

Widget defaultButton({
  double width = double.infinity,
  Color background = Colors.blue,
  bool isUpperCase = false,
  double radius = 0.0,
  required VoidCallback? function,
  required String text,
}) =>
    Container(
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.circular(radius),
      ),
      width: width,
      child: MaterialButton(
        onPressed: function,
        child: Text(
          isUpperCase ? text.toUpperCase() : text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );

Widget defaultFormField({
  required TextEditingController controller,
  required TextInputType inputType,
  required String label,
  Function(String?)? onChange,
  Function(String?)? onSubmit,
  Function()? suffixPressed,
  required String? Function(String?)? validate,
  bool isPassword = false,
  Icon? prefix,
  Icon? suffix,
}) =>
    TextFormField(
      obscureText: isPassword,
      controller: controller,
      keyboardType: inputType,
      onChanged: onChange,
      onFieldSubmitted: onSubmit,
      validator: validate,
      decoration: InputDecoration(
        labelText: label,
        border: OutlineInputBorder(),
        prefixIcon: prefix == null ? null : prefix,
        suffixIcon: suffix == null ? null : IconButton(
            icon: suffix,
          onPressed: suffixPressed,
        ),
      ),
    );
