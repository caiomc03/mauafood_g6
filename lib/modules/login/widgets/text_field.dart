import 'package:flutter/material.dart';

class TextFields extends StatelessWidget {
  final String title;
  final bool obscure;
  const TextFields({Key? key, required this.title, required this.obscure})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: TextField(
        obscureText: obscure,
        decoration: InputDecoration(
          border: const UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.black)),
          labelText: title,
        ),
      ),
    );
  }
}
