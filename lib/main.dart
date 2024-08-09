import 'package:clockapp_dailytask/screens/analogePage.dart';
import 'package:clockapp_dailytask/screens/strapPage.dart';
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';


import 'screens/digitalPage.dart';
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

        '/':(context)=> const digitalPage(),
        '/button':(context)=> const buttonPage(),
        '/clock':(context)=> const analogePage(),
        '/strap':(context)=> const strapPage(),

      },
    );
  }
}
