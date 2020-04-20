import 'package:flutter/material.dart';

class BulletDesign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 5,
      width: 5,
      decoration: new BoxDecoration(
        color: Theme.of(context).primaryColor,
        shape: BoxShape.circle,
      ),
    );
  }
}


              
