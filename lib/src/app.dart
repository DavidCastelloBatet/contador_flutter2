import 'package:flutter/material.dart';

//import 'package:contador/src/screens/home_page.dart';
import 'package:contador/src/screens/contador_page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ContadorPage(),
    );
  }
}
