import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:speaking_fingers/features/favourite/logic/ResModel.dart';
import 'package:speaking_fingers/features/favourite/logic/videoResponse.dart';

class apiManger {
  // https://youssifallam.pythonanywhere.com/api/v1/Videos/Get_All_Videos/
  //https://youssifallam.pythonanywhere.com/api/v1/Videos/Get-Video-Details/?video_title=lesson 1
  //https://youssifallam.pythonanywhere.com/api/v1/Videos/Get-user-favorites-videos/
  //https://youssifallam.pythonanywhere.com/api/v1/Videos/add-fav-video-to-user/
  static const String baseUrl = 'youssifallam.pythonanywhere.com';
  static const String apikey = '263b8ef3b6cb41e1aa193c089088ca13';

  static Future<VideoResponse> getVideos() async {
    var url = Uri.https(baseUrl, '/api/v1/Videos/Get_All_Videos/', {});
    var response = await http.get(url);
    var bodyString = response.body;
    var json = jsonDecode(bodyString);
    var videoResponse = VideoResponse.fromJson(json);
    if (response.statusCode == 200) {
      print(response);
      print(videoResponse);
      print(json);
      return videoResponse;
    } else {
      throw Exception('Failed to load album');
    }
  }


  static Future<RespModel> getVideoDetail() async {
    var headers = {
      'Authorization':
          'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNzE1MjgxNjE5LCJpYXQiOjE3MTM5ODU2MTksImp0aSI6IjNkYjYwMTI5NWRhOTQyOThhODg2Y2Y5ZmM4M2ZiMDZjIiwidXNlcl9pZCI6MTc1fQ.WGZD3If4Oe8RskXO2AoBTcGSaSAh0MHGtxoC8uq-xqE'
    };
    var request = http.Request(
        'GET',
        Uri.parse(
            'https://youssifallam.pythonanywhere.com/api/v1/Videos/Get-Video-Details/?video_title=lesson+1'));

    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    var body = await response.stream.bytesToString();
    var responseModel = RespModel.fromJson(jsonDecode(body));

    return responseModel;
  }
// static Future<RespModel> getVideoFavorite() async {
//   var headers = {
//     'Authorization':
//     'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNzE1MjgxNjE5LCJpYXQiOjE3MTM5ODU2MTksImp0aSI6IjNkYjYwMTI5NWRhOTQyOThhODg2Y2Y5ZmM4M2ZiMDZjIiwidXNlcl9pZCI6MTc1fQ.WGZD3If4Oe8RskXO2AoBTcGSaSAh0MHGtxoC8uq-xqE'
//   };
//   var request = http.Request(
//       'GET',
//       Uri.parse(
//           'https://youssifallam.pythonanywhere.com/api/v1/Videos/Get-Video-Details/?video_title=lesson+1'));
//
//   request.headers.addAll(headers);
//
//   http.StreamedResponse response = await request.send();
//
//   var body = await response.stream.bytesToString();
//   var responseModel = RespModel.fromJson(jsonDecode(body));
//
//   return responseModel;
// }
}

// static Future<VideoDetailsResponse> getVideoDetails() async {
// var headers = {
//   'Authorization':
//   'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNzE1MjgxNjE5LCJpYXQiOjE3MTM5ODU2MTksImp0aSI6IjNkYjYwMTI5NWRhOTQyOThhODg2Y2Y5ZmM4M2ZiMDZjIiwidXNlcl9pZCI6MTc1fQ.WGZD3If4Oe8RskXO2AoBTcGSaSAh0MHGtxoC8uq-xqE'
// };
// var request = http.Request(
//     'GET',
//     Uri.parse(
//         'https://youssifallam.pythonanywhere.com/api/v1/Videos/Get-Video-Details/?video_title=lesson+1'));
// http.StreamedResponse response = await request.send();
// var bodyString = await response.stream.bytesToString();
// var json = jsonDecode(bodyString);
// var videoDetailsResponse = VideoDetailsResponse.fromJson(json);
//
// if (response.statusCode == 200) {
// print(await response.stream.bytesToString());
// } else {
// print(response.reasonPhrase);
// }
// return videoDetailsResponse;
// }
