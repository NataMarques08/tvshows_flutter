import 'package:movies_catalog/rest/model/model_movie.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ApiService{

  Future<List<MovieModel>?> getApiData()async{
    String url = "https://api.tvmaze.com/shows";
    http.Response response = await http.get(
      Uri.parse(url)
    );

    if(response.statusCode == 200){
      var result = response.body;
      List decodeRes = jsonDecode(result);
      return decodeRes.map((job) => MovieModel.fromJson(job)).toList();
    }else{
      return null;
    }

  }

}