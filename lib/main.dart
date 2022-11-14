// Author:
// Sanket S.Sarmalkar
// 29/9/2022
// 07:36 IST
import 'package:flutter/material.dart';
import 'home.dart';

void main(){
  runApp(const myApp());
}

class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const homePage(),
    );
  }
}
