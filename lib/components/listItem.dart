import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:myprojects/models/number.dart';

class listItem extends StatelessWidget {
  const listItem({super.key, required this.number, required this.color, required this.itemTybe});
  final item number;
  final Color color;
  final String itemTybe;
  // final String sound ;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: Row(
        children: [
          Container(
            color: Colors.white,
            child: Image.asset(number.image!),
          ),
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
    );
  }
}

