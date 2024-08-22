import 'package:flutter/material.dart';
import 'package:my_project/components/button_components.dart';
import 'package:my_project/components/text_components.dart';
import 'package:my_project/services/auth_service.dart';

class LoginPage extends StatelessWidget {
  static const routeName ='/login';
  const LoginPage({super.key});

  

  void signupFunction(){}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //logo
          Icon(
            Icons.message,
            size: 60,
            color: Theme.of(context).colorScheme.tertiary,
          ),
      
          const SizedBox(height: 25),
          //email textfield
          MyText().textField(hintText: "Email", isPassword: false,context: context),
          const SizedBox(height: 7),

          //pw textfield
          MyText().textField(hintText: "Password", isPassword: true,context: context),
          const SizedBox(height: 7),

          //login button
          MyButton().textButton(onPressed: (){}, context: context, text: "Login"),

          //register now
          MyButton().textButtonWithUnderline(onPressed: ()=>AuthService().signInWithGoogle(), context: context, text: "Signin with google")
        ],
      ),
    );
  }
}
