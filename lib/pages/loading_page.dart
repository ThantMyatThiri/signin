import 'package:flutter/material.dart';

class LoadingPage extends StatefulWidget {
  static const routeName ='/loading';
  const LoadingPage({super.key});

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  
  @override
  Widget build(BuildContext context) {
    
    return const Scaffold(
      body: Center(
        child : Text(
          "Loading data....",
          textAlign: TextAlign.center,
        )
      )
    );
  }
}