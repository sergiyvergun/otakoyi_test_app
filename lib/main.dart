import 'package:flutter/material.dart';
import 'package:otakoyi_test_app/ui/screens/home.dart';
import 'package:otakoyi_test_app/ui/styles/colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Otakoyi Test App',
      home: Home(),
    );
  }
}
