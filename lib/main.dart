import 'package:flutter/material.dart';
import 'screens/clicker_ui.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'H Clicker',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
        appBarTheme: AppBarTheme(
          color: Colors.black,
        ),
        textTheme: TextTheme(
          bodyText2: TextStyle(color: Colors.white)
        )
      ),
      home: ClickerUI(),
    );
  }
}
