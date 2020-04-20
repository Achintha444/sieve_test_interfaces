import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      child: Center(
        child: Text(
          'DASHBOARD',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
