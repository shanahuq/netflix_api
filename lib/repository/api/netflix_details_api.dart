import 'dart:convert';

import 'package:http/http.dart';
import 'package:netflix_api/repository/api/Api_Client.dart';
import 'package:netflix_api/repository/api/Api_Exception.dart';
import 'package:netflix_api/repository/models/netflix_details_model.dart';

class NetflixDetailsApi {
  ApiClient apiClient = ApiClient();
  Future <List<NetflixDetailsModel>> getNetflixDetails(String id) async {
    String trendingPath = "f6d974cf72msh2a38ce245a6e1dep1c3733jsn271f6f36b8b5";
    Response response = await apiClient.invokeAPI(trendingPath, "GET", null);
    print(response.body);
    if(response.statusCode == 200) {
      Map<String,dynamic> jsonMap = json.decode(response.body);
      NetflixDetailsModel movie = NetflixDetailsModel.fromJson(jsonMap);
      return [NetflixDetailsModel.fromJson(jsonMap)];
    } else {
      final errorBody = json.decode(response.body);
      throw ApiException('Error : ${errorBody['message'] ?? 'Unknown error'}',
      response.statusCode
      );
    }
  }
}