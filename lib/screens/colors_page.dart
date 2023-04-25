import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../components/listItem.dart';
import '../models/number.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});

   final List<item> colors = const [
    item(
      sound: 'black.wav',
      image: 'assets/images/colors/color_black.png',
      jpName: 'Kuro ',
      enName: 'Black ',
    ),
    item(
      sound: 'brown.wav',
      image: 'assets/images/colors/color_brown.png',
      jpName: 'Chairo',
      enName: 'Brown ',
    ),
    item(
      sound: 'dusty yellow.wav',
      image: 'assets/images/colors/color_dusty_yellow.png',
      jpName: 'Dasutiierō',
      enName: 'Dusty_yellow',
    ),
    item(
      sound: 'gray.wav',
      image: 'assets/images/colors/color_gray.png',
      jpName: 'Gurē   ',
      enName: 'Gray ',
    ),
    item(
      sound: 'green.wav',
      image: 'assets/images/colors/color_green.png',
      jpName: 'Midori  ',
      enName: 'Green',
    ),
    item(
      sound: 'red.wav',
      image: 'assets/images/colors/color_red.png',
      jpName: 'Aka',
      enName: 'Red',
    ),
    item(
      sound: 'white.wav',
      image: 'assets/images/colors/color_white.png',
      jpName: 'Shiro',
      enName: 'White',
    ),
    item(
      sound: 'yellow.wav',
      image: 'assets/images/colors/yellow.png',
      jpName: 'Kiiro',
      enName: 'Yellow',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Colors Page'),
      ),
      body: ListView.builder(
        itemCount: colors.length,
        itemBuilder: (context, index) {
          return listItem(
            number: colors[index],
            color: Color.fromARGB(255, 1, 21, 35),
            itemTybe: 'colors',
          );
        },
      ),
    );
  }
}