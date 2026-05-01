import 'dart:convert';

import 'package:netflix_api/repository/api/Api_Client.dart';
import 'package:http/http.dart';
import 'package:netflix_api/repository/api/Api_Exception.dart';
import 'package:netflix_api/repository/models/netflix_models.dart';
class NetflixListApi {
  ApiClient apiClient = ApiClient();

  Future<List<NetflixListModel>> getnetflix() async {
String trendingPath = "https://netflix54.p.rapidapi.com/season/episodes/?ids=80077209%2C80117715&offset=0&limit=25&lang=en";
Response response = await apiClient.invokeAPI(trendingPath, "GET", null);
print(response.body);
if (response.statusCode == 200) {
  List<dynamic> jsonList = json.decode(response.body);
  List<NetflixListModel> netflixList = 
  jsonList.map((json) => NetflixListModel.fromJson(json)).toList();
  return netflixList;
 
}else {
  final errorBody = jsonDecode(response.body);
  throw ApiException(
    'Error : ${errorBody['message'] ?? 'Unknown error'}',
  response.statusCode,
  );
}
  }
}