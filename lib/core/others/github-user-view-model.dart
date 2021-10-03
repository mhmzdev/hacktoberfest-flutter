import 'package:flutter/material.dart';
import 'package:hacktoberfest_flutter/core/enums/view-state.dart';
import 'package:hacktoberfest_flutter/core/models/exception/response-exception.dart';
import 'package:hacktoberfest_flutter/core/models/github-user.dart';
import 'package:hacktoberfest_flutter/core/others/base-view-model.dart';
import 'package:hacktoberfest_flutter/core/services/database-services.dart';
import 'package:flip_card/flip_card_controller.dart';

class GithubUserViewModel extends BaseViewModel {
  // GithubUserViewModel() {
  //   getUserProfile();
  // }

  final _dbService = DatabaseService();
  FlipCardController flipController = FlipCardController();
  String errorMsg;

  getUserProfile(username) async {
    setState(ViewState.loading);
    GithubUser githubUser;

    try {
      githubUser = await _dbService.getUserProfile(username);

      setState(ViewState.idle);
      return githubUser;
    } on ResponseException catch (e) {
      print("Exception getuserprofiles===> ${e.cause}");
      errorMsg = e.cause;
      throw e.cause;
    }
  }
}
