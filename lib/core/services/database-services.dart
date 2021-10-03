import 'package:dio/dio.dart';
import 'package:hacktoberfest_flutter/core/constants/end-points.dart';
import 'package:hacktoberfest_flutter/core/models/exception/response-exception.dart';
import 'package:hacktoberfest_flutter/core/models/github-user.dart';

import 'api-services.dart';

class DatabaseService {
  //this function will get user profile from db
  Future<GithubUser> getUserProfile(String username) async {
    GithubUser githubUserProfile;
    Dio dio = ApiServices().launch();

    final response = await dio
        .get('${EndPoints.baseUrl}${EndPoints.githubProfile}/$username')
        .catchError((e, s) {
      print('@Exception/GetUserProfile=> $e');
      throw ResponseException('Network request failed');
    });

    ///
    /// Status code = 200 means the request was successfull and return the data
    /// otherwise throw an exception which must be caught at the other end
    /// from where this class method is triggered
    ///
    if (response.statusCode == 200) {
      githubUserProfile = GithubUser.fromJson(response.data);
      return githubUserProfile;
    } else {
      throw ResponseException('${response.data['message']}');
    }
  }
}
