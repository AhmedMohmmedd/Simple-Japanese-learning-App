import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  Category({this.text, this.color , this.onTap});
  String? text;
  Color? color;
  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
      /*  decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
        ),*/
        padding: EdgeInsets.only(left: 24 ,),
        margin: EdgeInsets.only(left: 20 , right: 20, top: 30),
        alignment: Alignment.centerLeft,
        height: 80,
        width: double.infinity,
        color: color,
        child: Text(
          text!,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}