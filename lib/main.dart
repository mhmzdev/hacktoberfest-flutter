/* 
@Author Muhammad Hamza
@GitHub mhmzdev
@Updated Date: 2nd Oct, 2021

Hacktoberfest2021 - Flutter Developers
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
import 'package:hacktoberfest_flutter/ui/util/restart_app.dart';
import 'package:hacktoberfest_flutter/ui/screens/welcome.dart';
import 'package:provider/provider.dart';

import 'core/others/github-user-view-model.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RestartWidget(
      child: MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => GithubUserViewModel(),
          )
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Hacktoberfest 2021',
          theme: ThemeData(
            primaryColor: Color(0xfff74700),
            accentColor: const Color(0xfff74700),
          ),
          initialRoute: '/',
          routes: {
            '/': (context) => Welcome(),
          },
        ),
      ),
    );
  }
}
