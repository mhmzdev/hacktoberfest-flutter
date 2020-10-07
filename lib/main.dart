import 'package:flutter/material.dart';
import 'package:hacktoberfest_flutter/welcome.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        accentColor: Color(0xff9c4668)
      ),
      home: Welcome(),
    );
  }
}
