import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../components/listItem.dart';
import '../models/number.dart';

class FamilyMembersPage extends StatelessWidget {
  const FamilyMembersPage({super.key});

  final List<item> FamilyMembers = const [
    item(
      sound: 'father.wav',
      image: 'assets/images/family_members/family_father.png',
      jpName: 'Chichioya ',
      enName: 'Father ',
    ),
    item(
      sound: 'mother.wav',
      image: 'assets/images/family_members/family_mother.png',
      jpName: 'Hahaoya',
      enName: 'Mother ',
    ),
    item(
      sound: 'son.wav',
      image: 'assets/images/family_members/family_son.png',
      jpName: 'musuko',
      enName: 'Son',
    ),
    item(
      sound: 'daughter.wav',
      image: 'assets/images/family_members/family_daughter.png',
      jpName: 'Musume   ',
      enName: 'Daughter ',
    ),
    item(
      sound: 'grand father.wav',
      image: 'assets/images/family_members/family_grandfather.png',
      jpName: 'ojīchan  ',
      enName: 'Grandfather',
    ),
    item(
      sound: 'grand mother.wav',
      image: 'assets/images/family_members/family_grandmother.png',
      jpName: 'Sobo',
      enName: 'Grandmother',
    ),
    item(
      sound: 'older bother.wav',
      image: 'assets/images/family_members/family_older_brother.png',
      jpName: 'Ani',
      enName: 'Older_brother',
    ),
    item(
      sound: 'older sister.wav',
      image: 'assets/images/family_members/family_older_sister.png',
      jpName: 'Ane',
      enName: 'Older_sister',
    ),
    item(
      sound: 'younger brohter.wav',
      image: 'assets/images/family_members/family_younger_brother.png',
      jpName: 'Otōto',
      enName: 'Younger_brother.',
    ),
    item(
      sound: 'younger sister.wav',
      image: 'assets/images/family_members/family_younger_sister.png',
      jpName: 'Imōto',
      enName: 'Younger_sister',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Family Members Page'),
      ),
      body: ListView.builder(
        itemCount: FamilyMembers.length,
        itemBuilder: (context, index) {
          return listItem(
            number: FamilyMembers[index],
            color: Color.fromARGB(255, 1, 21, 35),
            itemTybe: 'family_members',
          );
        },
      ),
    );
  }
}
