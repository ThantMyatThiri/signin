import 'package:flutter/material.dart';


class MyButton{
  final double buttonTextFontSize = 18;

  Widget textButton({
    required Function onPressed,
    required BuildContext context,
    required String text
  }){
    return TextButton(
      onPressed: ()=>onPressed, 
      style: TextButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
        backgroundColor: Theme.of(context).colorScheme.tertiary,
        foregroundColor: Theme.of(context).colorScheme.secondary,
        textStyle: TextStyle(
          fontSize: buttonTextFontSize,
          fontWeight: FontWeight.bold
        ),
       ),
      child: Text(text),
    );
  }

  Widget textButtonWithUnderline({
    required Function() onPressed,
    required String text,
    required BuildContext context
  }){
    return TextButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
          decoration: TextDecoration.underline,
          color: Theme.of(context).colorScheme.tertiary,
          fontSize: 16,
        ),
      ),
    );
  }
}