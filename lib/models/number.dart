import 'package:flutter/cupertino.dart';

class item {
  final String sound;
  final String? image;
  final String jpName;
  final String enName;
  const item(
      {required this.sound,
      @required this.image,
      required this.jpName,
      required this.enName});
}
