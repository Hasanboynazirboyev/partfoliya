import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:task_modul2/screens/home_page.dart';
import 'package:task_modul2/screens/main_home_page.dart';
import 'package:task_modul2/screens/components/splashScreen_page.dart';



void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xfffDFDFDF),
          appBarTheme: const AppBarTheme(
              titleTextStyle: TextStyle(color: Colors.black, fontSize: 25),
              elevation: 0,
              iconTheme: IconThemeData(color: Colors.black87),
              color: Colors.white)),

      home: MainHomePage(),
      //splash screen
    );
  }
}