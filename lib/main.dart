import 'package:flutter/material.dart';
import 'phoneOTP.dart';
import 'login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(initialRoute: login.id, routes: {
      login.id: (context) => login(),
      phoneOTP.id: (context) => phoneOTP(),
    });
  }
}
