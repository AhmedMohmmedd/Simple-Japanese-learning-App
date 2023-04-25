import 'package:flutter/material.dart';
import 'package:myprojects/screens/home_page.dart';


void main() {
  runApp( toku());
}

class toku extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}


