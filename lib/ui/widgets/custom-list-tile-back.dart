import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hacktoberfest_flutter/core/enums/view-state.dart';
import 'package:hacktoberfest_flutter/core/models/github-user.dart';
import 'package:hacktoberfest_flutter/core/others/github-user-view-model.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomListTileBack extends StatefulWidget {
  final String contributorName;
  final String contributorGitHubUserName;
  final GithubUser githubUser;
  final isLoaded;
  final ontap;

  CustomListTileBack(
      {@required this.contributorGitHubUserName,
      @required this.contributorName,
      @required this.githubUser,
      this.isLoaded,
      this.ontap});

  @override
  _CustomListTileBackState createState() => _CustomListTileBackState();
}

class _CustomListTileBackState extends State<CustomListTileBack> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Consumer<GithubUserViewModel>(
      builder: (context, model, child) => GestureDetector(
        onTap: widget.ontap,
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 15.0,
          ),
          width: width * 0.7,
          height: height * 0.18,
          decoration: BoxDecoration(
            color: Colors.black12,
            borderRadius: BorderRadius.circular(5.0),
          ),
          child: widget.isLoaded
              ? Center(
                  child: CupertinoActivityIndicator(
                    radius: 20,
                  ),
                )
              : model.errorMsg != null
                  ? Center(child: Text("${model.errorMsg}"))
                  : Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          //avatar
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: 60,
                                width: 60,
                                decoration:
                                    BoxDecoration(shape: BoxShape.circle),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(100),
                                  child: FadeInImage.assetNetwork(
                                      fit: BoxFit.contain,
                                      placeholder: 'assets/placeholder.png',
                                      image: widget.githubUser.avatarUrl),
                                ),
                              ),
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        "Followers",
                                        style: TextStyle(
                                          fontSize: 11.0,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 3.0,
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.group,
                                        color: Colors.black45,
                                        size: 15,
                                      ),
                                      SizedBox(
                                        width: 3.0,
                                      ),
                                      Text(
                                        "${widget.githubUser?.followers ?? ""}",
                                        style: TextStyle(
                                          fontSize: 13.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 16.0,
                          ),
                          //details
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 0, bottom: 8),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "${widget.githubUser?.name ?? "${widget.contributorGitHubUserName}"}",
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: 1.3,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      widget.githubUser?.bio == null
                                          ? Container()
                                          : Flexible(
                                              child: Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 8.0, bottom: 0),
                                              child: Text(
                                                "${widget.githubUser?.bio ?? ""}",
                                                style: TextStyle(
                                                  fontSize: 13.0,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                            )),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 6.0),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Icon(
                                          Icons.location_on,
                                          size: 12,
                                        ),
                                        Flexible(
                                          child: Text(
                                            " ${widget.githubUser?.company ?? ""},d ${widget.githubUser?.location ?? ""}",
                                            // overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                              fontSize: 13.0,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
        ),
      ),
    );
  }
}
