import 'package:flutter/material.dart';
import 'package:myprojects/screens/colors_page.dart';
import 'package:myprojects/screens/family_page.dart';
import 'package:myprojects/screens/numbers_page.dart';
import 'package:myprojects/screens/phreses_page.dart';

import '../components/category_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff6289A2FF),
      appBar: AppBar(
        title: Text('Toku'),
       // backgroundColor: Color.fromARGB(255, 34, 33, 33),
      ),
      body: Container(
        margin: EdgeInsets.all(40),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.blue ,width: 2 ),
          borderRadius: BorderRadius.circular(16),
        ),
        child:Column(
          children: [
            Category(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return NumbersPage();
                }));
              },
              text: 'Numbers',
              color: Color(0xff4B6279FF),
            ),

            Category(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return FamilyMembersPage();
                }));
              },

              text: 'Family Members',
              color: Color(0xff4B6279FF),
            ),


            Category(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ColorsPage();
                }));
              },
              text: ' Colors',
              color: Color(0xff4B6279FF),
            ),

            Category(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return PhresesPage();
                }));
              },
              text: 'Phrases',
              color: Color(0xff4B6279FF),
            ),
          ],
        ),
      ),

    );
  }
}