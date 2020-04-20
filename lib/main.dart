import 'package:flutter/material.dart';

import './core/Constants/theme_data.dart' as td;
import 'features/bottom_nav/presentation/pages/bottom_nav.dart';
import 'injection_container.dart';

Future main() async {
  await init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sieve',
      theme: td.themeData,
      home: BottomNav(),
    );
  }
}
