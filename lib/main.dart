import 'package:flutter/material.dart';
import 'package:flutter_project/Screens/SignUp.dart';


import 'Screens/SignUp.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SignUp(),
      debugShowCheckedModeBanner: false,
    );
  }
}
