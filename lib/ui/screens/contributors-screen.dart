import 'package:flutter/material.dart';
import 'package:hacktoberfest_flutter/core/enums/view-state.dart';
import 'package:hacktoberfest_flutter/core/models/github-user.dart';
import 'package:hacktoberfest_flutter/core/others/github-user-view-model.dart';
import 'package:hacktoberfest_flutter/ui/util/restart_app.dart';
import 'package:hacktoberfest_flutter/ui/widgets/custom-list-tile-back.dart';
import 'package:hacktoberfest_flutter/ui/widgets/custom_list-tile-front.dart';
import 'package:provider/provider.dart';
import '../../core/constants/contributors.dart';
import 'package:flip_card/flip_card.dart';
import 'package:get/get.dart';

class Contributors extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: NestedScrollView(
          headerSliverBuilder:
              (BuildContext context, bool innerBoxIsScrolled) => <Widget>[
            SliverAppBar(
              backgroundColor: Colors.white,
              leading: BackButton(
                color: Color(0xfff74700),
                onPressed: () => RestartWidget.restartApp(context),
              ),
              pinned: true,
              expandedHeight: 220.0,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: Text(
                  "Hacktoberfest Contributors",
                  style: TextStyle(
                    color: Color(0xfff74700),
                    fontSize: 17.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                background: Center(
                  child: Image.asset(
                    'assets/banner2021.png',
                    height: 180.0,
                  ),
                ),
              ),
            ),
          ],
          body: gitHubUserNames.length == contributorNames.length
              ? ListView.separated(
                  physics: BouncingScrollPhysics(),
                  padding: const EdgeInsets.all(8.0),
                  separatorBuilder: (context, index) =>
                      Divider(color: Colors.transparent),
                  itemCount: contributorNames.length,
                  itemBuilder: (context, index) {
                    return ContributorFlipCard(index);
                  },
                )
              : Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 18.0, vertical: 80),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Text(
                          "you forgot to one of required data field i:e username/contributorName",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xfff74700),
                            fontSize: 14.0,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
        ));
  }
}

class ContributorFlipCard extends StatefulWidget {
  final index;
  ContributorFlipCard(this.index);

  @override
  _ContributorFlipCardState createState() => _ContributorFlipCardState();
}

class _ContributorFlipCardState extends State<ContributorFlipCard> {
  GlobalKey<FlipCardState> cardKey = GlobalKey<FlipCardState>();

  GithubUser githubUser;

  ViewState viewState = ViewState.loading;

  @override
  Widget build(BuildContext context) {
    return Consumer<GithubUserViewModel>(
      builder: (context, model, child) => FlipCard(
        direction: FlipDirection.HORIZONTAL,
        onFlipDone: (bool) async {
          if (!bool) {
            print("$bool  getData");
            model.errorMsg = null;
            githubUser = null;
            viewState = ViewState.loading;
            try {
              githubUser =
                  await model.getUserProfile(gitHubUserNames[widget.index]);
              viewState = ViewState.idle;
              setState(() {});
            } catch (e) {
              viewState = ViewState.idle;
              setState(() {});
            }
          }
        },

        key: cardKey,
        controller: model.flipController,
        flipOnTouch: false,
        front: CustomListTileFront(
          contributorGitHubUserName: gitHubUserNames[widget.index],
          contributorName: contributorNames[widget.index],
          ontap: () => cardKey.currentState.toggleCard(),
        ),
        back: CustomListTileBack(
          contributorGitHubUserName: gitHubUserNames[widget.index],
          contributorName: contributorNames[widget.index],
          githubUser: githubUser,
          ontap: () => cardKey.currentState.toggleCard(),
          isLoaded: viewState == ViewState.loading,
        ),
        // side: model.cardSide
      ),
    );
  }
}
