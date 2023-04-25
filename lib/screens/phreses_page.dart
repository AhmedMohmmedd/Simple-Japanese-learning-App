import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../components/PhraseItem.dart';
import '../components/listItem.dart';
import '../models/number.dart';

class PhresesPage extends StatelessWidget {
  const PhresesPage({super.key});

   final List<item> colors = const [
    item(
      sound: 'are_you_coming.wav',
      jpName: 'Āru you kamingu ',
      enName: 'Are you coming ',
    ),
    item(
      sound: 'dont_forget_to_subscribe.wav',
      jpName: 'Kōdoku suru koto o wasurenaide kudasai',
      enName: 'Dont forget to subscribe ',
    ),
    item(
      sound: 'how_are_you_feeling.wav',
      jpName: 'Go kibun wa ikagadesu ka',
      enName: 'How are you feeling',
    ),
    item(
      sound: 'i_love_anime.wav',
      jpName: 'Watashi wa anime ga daisukidesu   ',
      enName: 'I love anime ',
    ),
    item(
      sound: 'i_love_programming.wav',
      jpName: 'Watashi wa puroguramingu ga daisukidesu  ',
      enName: 'I love programming',
    ),
    item(
      sound: 'programming_is_easy.wav',
      jpName: 'Puroguramingu wa kantanda',
      enName: 'Programming is easy',
    ),
    item(
      sound: 'what_is_your_name.wav',
      jpName: 'Namae wa nandesu ka.',
      enName: 'What is your name.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Phreses Page'),
      ),
      body: ListView.builder(
        itemCount: colors.length,
        itemBuilder: (context, index) {
          return PhraseItem(
            number: colors[index],
            color:Color.fromARGB(255, 1, 21, 35),
            itemTybe: 'phrases',
          );
        },
      ),
    );
  }
}