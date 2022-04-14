import 'package:flutter/material.dart';
import 'package:loginpage_123/cards_design.dart';
import 'package:loginpage_123/login_firebase.dart';

void main() {
  runApp(MyApp());
}



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
        backgroundColor: Colors.black26
      ),
      title: 'Flutter Demo',
      // theme: ThemeData(
      //   textTheme: GoogleFonts.josefinSansTextTheme(Theme.of(context).textTheme),
      //   primaryColor: Colors.blue,
      //   visualDensity: VisualDensity.adaptivePlatformDensity,
      //   primarySwatch: Colors.blue,
      // ),
      home: LoginScreen(),

    );
  }
}

