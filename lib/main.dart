import 'package:flutter/material.dart';
import 'screen/Home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'whatsapp_ui',
      theme: ThemeData(
        colorScheme: ColorScheme.dark(),
        tabBarTheme: TabBarTheme(
          labelColor: Colors.white,
        ),
        textTheme: TextTheme(
            bodyText1: TextStyle(color: Colors.white, fontSize: 16.0),
            button: TextStyle(color: Colors.white)),
        bottomAppBarColor: Colors.white,
      ),
      home: Home(),
    );
  }
}
