import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import '../models/number.dart';

class PhraseItem extends StatelessWidget {
  const PhraseItem({super.key, required this.number, required this.color, required this.itemTybe ,});

  final item number;
  final Color color;
  final String itemTybe;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  number.jpName,
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  number.enName,
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
          Spacer(
            flex: 1,
          ),
          //assets\sounds\family_members
          //assets\sounds\numbers
          //assets\sounds\phrases

          IconButton(
            onPressed: () {
              AudioCache player = AudioCache(prefix: 'assets/sounds/$itemTybe/');
              player.play(number.sound);
            },
            icon: Icon(
              Icons.play_arrow,
              color: Colors.white,
              size: 32,
            ),
          ),
        ],
      ),
    );;
  }
}
