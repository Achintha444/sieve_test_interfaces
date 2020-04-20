import 'package:flutter/material.dart';

class Bottom extends StatelessWidget implements PreferredSizeWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      color: Colors.red,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(300);
}