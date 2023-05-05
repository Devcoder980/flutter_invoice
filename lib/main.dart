import 'package:flutter/material.dart';
import 'package:responsive/pages/login_page.dart';
import 'package:responsive/responsive/destop_scafford.dart';
import 'package:responsive/responsive/mobila_scafford.dart';
import 'package:responsive/responsive/responsive_layout.dart';
import 'package:responsive/responsive/tablet_scafford.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      // home: MobileScaffold(),
    );
  }
}
