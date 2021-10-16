import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomListTile extends StatelessWidget {
  final String contributorName;
  final String contributorGitHubUserName;
  CustomListTile(
      {required this.contributorGitHubUserName,
      required this.contributorName});
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
        borderRadius: BorderRadius.circular(5.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(0, 0),
            blurRadius: 4.0,
            spreadRadius: 2.0,
          )
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  contributorName,
                  style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5,
                  ),
                ),
              ),
              const SizedBox(width: 10.0),
              InkWell(
                onTap: () =>
                    launch('https://github.com/$contributorGitHubUserName'),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Icon(
                    Icons.arrow_forward,
                    color: Color(0xfff74700),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              const Icon(FontAwesomeIcons.github),
              const SizedBox(width: 7),
              Text(
                contributorGitHubUserName,
                style: TextStyle(fontSize: 16.0),
              ),
              const SizedBox(width: 5),
              contributorGitHubUserName == "mhmzdev"
                  ? const Icon(
                      Icons.verified,
                      color: Color(0xfff74700),
                      size: 16,
                    )
                  : Container(),
            ],
          )
        ],
      ),
    );
  }
}
