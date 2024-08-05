import 'package:flutter/material.dart';

import 'package:flutter/material.dart';


import 'screens/buttonPage.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context)=> const buttonPage(),
      },
    );
  }
}
