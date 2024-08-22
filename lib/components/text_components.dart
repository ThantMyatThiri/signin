import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyText {
  Widget textWithFontSize16(String text, BuildContext context) {
    return Text(
      text,
      style:
          TextStyle(color: Theme.of(context).colorScheme.primary, fontSize: 16),
    );
  }

  Widget textField({
    String hintText="",
    bool isPassword = false,
    required BuildContext context
  }){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: TextField(
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide:
                    BorderSide(color: Theme.of(context).colorScheme.primary)),
            focusedBorder: OutlineInputBorder(
                borderSide:
                    BorderSide(color: Theme.of(context).colorScheme.tertiary)),
            fillColor: Theme.of(context).colorScheme.secondary,
            filled: true,
            hintText: hintText,
            hintStyle:
                TextStyle(color: Theme.of(context).colorScheme.tertiary)),
        obscureText: isPassword,
      ),
    );
  }
}