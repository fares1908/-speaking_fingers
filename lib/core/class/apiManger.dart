import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:speaking_fingers/core/class/videoRespons.dart';
class apiManger {
//https://youssifallam.pythonanywhere.com/api/videos?638842fe-8970-4d99-891b-187925261957
  static const String baseUrl = 'youssifallam.pythonanywhere.com';
  static const String apikey = '263b8ef3b6cb41e1aa193c089088ca13';
  //apiKey=263b8ef3b6cb41e1aa193c089088ca13
//String videoId
// 'video': videoId
  static Future<VideoRespons> getVideos(String videoId) async {
    var url = Uri.https(baseUrl, '/api/videos/',{'video': videoId}
        );
    var response = await http.get(url);
    var bodyString = response.body;
    var json = jsonDecode(bodyString);
    var videoResponse = VideoRespons.fromJson(json);

    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      print(response);
      print(videoResponse);
      print(json);


      return videoResponse;

    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load album');
    }
    // try {
    //   var response = await http.get(url);
    //   var bodyString = response.body;
    //   var json = jsonDecode(bodyString);
    //   var videoResponse = VideoRespons.fromJson(json);
    //   return videoResponse;
    // } catch (massage) {
    //   throw massage;
    // }
  }
}