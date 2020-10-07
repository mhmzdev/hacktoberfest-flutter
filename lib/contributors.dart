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
            return CustomListTile(
              contributorGitHubUserName: gitHubUserName[index],
              contributorName: contributorsName[index],
            );
          }),
    );
  }
}

class CustomListTile extends StatelessWidget {
  final String contributorName;
  final String contributorGitHubUserName;
  CustomListTile(
      {@required this.contributorGitHubUserName,
      @required this.contributorName});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.7,
      height: MediaQuery.of(context).size.height * 0.1,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Color(0xff9c4668), width: 2.0)),
      child: Column(
        children: [
          Text(
            "Muhammad Hamza",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Row(
            children: [
              Image.asset('assets/github.png'),
              Text("@m-hamzashakeel")
            ],
          )
        ],
      ),
    );
  }
}
