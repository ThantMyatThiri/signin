import 'package:flutter/material.dart';
import 'package:my_project/pages/loading_page.dart';
import 'package:my_project/pages/auth/login_page.dart';
import 'package:my_project/theme/myTheme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      supportedLocales: const[
        Locale('en',''),//English , no country code
      ],
      debugShowCheckedModeBanner: false,
      theme: lightMode,
      darkTheme: ThemeData.dark(),
      onGenerateRoute: (RouteSettings routeSettings){
        return MaterialPageRoute(
          settings: routeSettings,
          builder: (BuildContext context){
            switch (routeSettings.name){
              default: return const LoginPage();
            }
        });
      },
    );
  }
}