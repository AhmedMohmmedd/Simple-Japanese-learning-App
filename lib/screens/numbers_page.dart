import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'package:flutter/material.dart';

import '../components/listItem.dart';
import '../models/number.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});

  final List<item> numbers = const [
    item(
      sound: 'number_one_sound.mp3',
      image: 'assets/images/numbers/number_one.png',
      jpName: 'ichi',
      enName: 'One',
    ),
    item(
      sound: 'number_two_sound.mp3',
      image: 'assets/images/numbers/number_two.png',
      jpName: 'Ni',
      enName: 'Tow',
    ),
    item(
      sound: 'number_three_sound.mp3',
      image: 'assets/images/numbers/number_three.png',
      jpName: 'San',
      enName: 'Three',
    ),
    item(
      sound: 'number_four_sound.mp3',
      image: 'assets/images/numbers/number_four.png',
      jpName: 'Shi',
      enName: 'Four',
    ),
    item(
      sound: 'number_five_sound.mp3',
      image: 'assets/images/numbers/number_five.png',
      jpName: 'GO',
      enName: 'Five',
    ),
    item(
      sound: 'number_six_sound.mp3',
      image: 'assets/images/numbers/number_six.png',
      jpName: 'Roku',
      enName: 'Six',
    ),
    item(
      sound: 'number_seven_sound.mp3',
      image: 'assets/images/numbers/number_seven.png',
      jpName: 'Sebun',
      enName: 'Seven',
    ),
    item(
      sound: 'number_eight_sound.mp3',
      image: 'assets/images/numbers/number_eight.png',
      jpName: 'hachi',
      enName: 'Eight',
    ),
    item(
      sound: 'number_nine_sound.mp3',
      image: 'assets/images/numbers/number_nine.png',
      jpName: 'kyu',
      enName: 'Nine.',
    ),
    item(
      sound: 'number_ten_sound.mp3',
      image: 'assets/images/numbers/number_ten.png',
      jpName: 'ju',
      enName: 'Ten',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Numbers Page'),
        ),
        body: ListView.builder(
          itemCount: numbers.length,
          itemBuilder: (context, index) {
            return listItem(
              number: numbers[index],
              color: Color.fromARGB(255, 1, 21, 35),
              itemTybe: 'numbers',
            );
          },
        ),
      ),
    );
  }
}
