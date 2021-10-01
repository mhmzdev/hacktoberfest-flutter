/* 
@Author Muhammad Hamza
@GitHub m-hamzashakeel
@Dated: 7th Oct, 2020

Hacktoberfest2020 - Flutter Developers
--> Welcome to The Flutter Project

Steps:
1. Goto contributors.dart file
2. Add your Full name & GitHub User name in List[] mentioned
3. Goto /participants
4. Add new file with your name e.g. yourname.md
5. Copy paste information from previous file
6. Edit your information in yourname.md file
7. Create PR according to the doc given in GitHub Repo

Note: Don't make changes to the app other than what is required, otherwise your PR won't be accepted/merge :)

*/

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
        accentColor: const Color(0xff9c4668)
      ),
      home: Welcome(),
    );
  }
}
