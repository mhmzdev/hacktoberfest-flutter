import 'package:flutter/material.dart';

class Contributor extends StatelessWidget {
  final contributorsName = ['Hamza', 'Ali', 'Usman'];

  final gitHubUserName = ['m-hamzashakeel', 'ali_dev', 'usmanwaleed'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff183d5d),
      appBar: AppBar(
        backgroundColor: Color(0xff9c4668),
        title: Text("Hacktober Fest - Contributors"),
      ),
      body: ListView.builder(
          itemCount: contributorsName.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(contributorsName[index]),
              subtitle: Text(gitHubUserName[index]),
            );
          }),
    );
  }
}
