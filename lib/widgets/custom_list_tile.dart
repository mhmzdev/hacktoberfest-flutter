import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final String contributorName;
  final String contributorGitHubUserName;
  CustomListTile(
      {@required this.contributorGitHubUserName,
      @required this.contributorName});
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      width: width * 0.7,
      height: height * 0.15,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15.0),
          border: Border.all(color: Color(0xff9c4668), width: 3.0)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            contributorName,
            style: TextStyle(
                fontSize: height * 0.035,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.5),
          ),
          SizedBox(
            height: height * 0.015,
          ),
          Row(
            children: [
              Image.asset(
                'assets/github.png',
                height: height * 0.03,
              ),
              SizedBox(
                width: 7,
              ),
              Text(
                contributorGitHubUserName,
                style: TextStyle(fontSize: height * 0.025),
              )
            ],
          )
        ],
      ),
    );
  }
}
