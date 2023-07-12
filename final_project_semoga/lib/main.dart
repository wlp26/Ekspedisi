import 'screens/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(EkspedisiApp());
}

class EkspedisiApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Login(),
    );
  }
}
