/*
Add your `Full Name` in contributorsName[]
Add your `GitHub Username` in gitHubUserName[]
Refresh your app to see the result~
*/

import 'package:flutter/material.dart';
import 'package:hacktoberfest_flutter/widgets/custom_list_tile.dart';

class Contributor extends StatelessWidget {
  // < Add your Full Name in the List[] >
  final contributorsName = [
    'Muhammad Hamza',
    'Shoaib Ahmed',
  ];

  // < Add your GitHub Username in the List[] >
  final gitHubUserName = [
    'm-hamzashakeel',
    'shobu95',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff183d5d),
      appBar: AppBar(
        backgroundColor: Color(0xff9c4668),
        title: Text("Hacktober Fest - Contributors"),
      ),
      body: ListView.separated(
          separatorBuilder: (context, index) => Divider(
                color: Colors.transparent,
                height: 10,
              ),
          padding: const EdgeInsets.all(8.0),
          itemCount: contributorsName.length,
          itemBuilder: (context, index) {
            return CustomListTile(
              contributorGitHubUserName: gitHubUserName[index],
              contributorName: contributorsName[index],
            );
          }),
    );
  }
}
