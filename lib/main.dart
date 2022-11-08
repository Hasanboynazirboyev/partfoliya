import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:task_modul2/screens/components/splashScreen_page.dart';



void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromARGB(255, 235, 235, 232),
          appBarTheme: const AppBarTheme(
              titleTextStyle: TextStyle(color: Colors.black87, fontSize: 25),
              elevation: 0,
              iconTheme: IconThemeData(color: Colors.black87),
              color: Colors.white)),

      home: SplashScreenPage(),
      //splash screen
    );
  }
}