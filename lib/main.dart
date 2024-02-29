import 'package:drawer/drawer/hidden_drawer.dart';
import 'package:drawer/ui/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
             useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: HiddenDrawer(),
    );
  }
}


