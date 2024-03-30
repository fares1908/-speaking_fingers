/// status : "success"
/// data : {"videos":[{"id":1,"title":"lesson 1","description":"lesson 1 Description","video_file":"https://youssifallam.pythonanywhere.com/media/videos/%D8%AA%D8%B9%D9%84%D9%85_%D9%84%D8%BA%D8%A9_%D8%A7%D9%84%D8%A7%D8%B4%D8%A7%D8%B1%D8%A9_-_%D9%83%D9%84%D9%85%D8%A7%D8%AA_%D8%AA%D8%AE%D8%B5_%D8%A7%D9%84%D8%A7%D9%86%D8%B3%D8%A7%D9%86_%D9%88%D9%83%D9%84%D9%85%D8%A7%D8%AA_%D8%A7%D9%84%D8%AA%D8%B1%D8%AD%D9%8A%D8%A8_3.mp4","thumbnail":"https://youssifallam.pythonanywhere.com/media/video_thumbnails/Screenshot_289.png"},{"id":2,"title":"lesson 2","description":"lesson 2 Description","video_file":"https://youssifallam.pythonanywhere.com/media/videos/%D8%AA%D8%B9%D9%84%D9%85_%D9%84%D8%BA%D8%A9_%D8%A7%D9%84%D8%A7%D8%B4%D8%A7%D8%B1%D8%A9_-_%D9%83%D9%84%D9%85%D8%A7%D8%AA_%D8%AA%D8%AE%D8%B5_%D8%A7%D9%84%D8%A7%D9%86%D8%B3%D8%A7%D9%86_%D9%88%D9%83%D9%84%D9%85%D8%A7%D8%AA_%D8%A7%D9%84%D8%AA%D8%B1%D8%AD%D9%8A%D8%A8_3_Xdmo4a3.mp4","thumbnail":"https://youssifallam.pythonanywhere.com/media/video_thumbnails/p.jpeg"}]}

class VideoRespons {
  VideoRespons({
      this.status, 
      this.data,
    this.code,
    this.message,});

  VideoRespons.fromJson(dynamic json) {
    status = json['status'];
    code = json['code'];
    message = json['message'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;

  }
  String? status;
  Data? data;
  String? code;
  String? message;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = status;
    map['code'] = code;
    map['message'] = message;
    if (data != null) {
      map['data'] = data?.toJson();
    }
    return map;
  }

}

/// videos : [{"id":1,"title":"lesson 1","description":"lesson 1 Description","video_file":"https://youssifallam.pythonanywhere.com/media/videos/%D8%AA%D8%B9%D9%84%D9%85_%D9%84%D8%BA%D8%A9_%D8%A7%D9%84%D8%A7%D8%B4%D8%A7%D8%B1%D8%A9_-_%D9%83%D9%84%D9%85%D8%A7%D8%AA_%D8%AA%D8%AE%D8%B5_%D8%A7%D9%84%D8%A7%D9%86%D8%B3%D8%A7%D9%86_%D9%88%D9%83%D9%84%D9%85%D8%A7%D8%AA_%D8%A7%D9%84%D8%AA%D8%B1%D8%AD%D9%8A%D8%A8_3.mp4","thumbnail":"https://youssifallam.pythonanywhere.com/media/video_thumbnails/Screenshot_289.png"},{"id":2,"title":"lesson 2","description":"lesson 2 Description","video_file":"https://youssifallam.pythonanywhere.com/media/videos/%D8%AA%D8%B9%D9%84%D9%85_%D9%84%D8%BA%D8%A9_%D8%A7%D9%84%D8%A7%D8%B4%D8%A7%D8%B1%D8%A9_-_%D9%83%D9%84%D9%85%D8%A7%D8%AA_%D8%AA%D8%AE%D8%B5_%D8%A7%D9%84%D8%A7%D9%86%D8%B3%D8%A7%D9%86_%D9%88%D9%83%D9%84%D9%85%D8%A7%D8%AA_%D8%A7%D9%84%D8%AA%D8%B1%D8%AD%D9%8A%D8%A8_3_Xdmo4a3.mp4","thumbnail":"https://youssifallam.pythonanywhere.com/media/video_thumbnails/p.jpeg"}]

class Data {
  Data({
      this.videos,});

  Data.fromJson(dynamic json) {
    if (json['videos'] != null) {
      videos = [];
      json['videos'].forEach((v) {
        videos?.add(Video.fromJson(v));
      });
    }
  }
  List<Video>? videos;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (videos != null) {
      map['videos'] = videos?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// id : 1
/// title : "lesson 1"
/// description : "lesson 1 Description"
/// video_file : "https://youssifallam.pythonanywhere.com/media/videos/%D8%AA%D8%B9%D9%84%D9%85_%D9%84%D8%BA%D8%A9_%D8%A7%D9%84%D8%A7%D8%B4%D8%A7%D8%B1%D8%A9_-_%D9%83%D9%84%D9%85%D8%A7%D8%AA_%D8%AA%D8%AE%D8%B5_%D8%A7%D9%84%D8%A7%D9%86%D8%B3%D8%A7%D9%86_%D9%88%D9%83%D9%84%D9%85%D8%A7%D8%AA_%D8%A7%D9%84%D8%AA%D8%B1%D8%AD%D9%8A%D8%A8_3.mp4"
/// thumbnail : "https://youssifallam.pythonanywhere.com/media/video_thumbnails/Screenshot_289.png"

class Video {
  Video({
      this.id, 
      this.title, 
      this.description, 
      this.videoFile, 
      this.thumbnail,});

  Video.fromJson(dynamic json) {
    id = json['id'];
    title = json['title'];
    description = json['description'];
    videoFile = json['video_file'];
    thumbnail = json['thumbnail'];
  }
  num? id;
  String? title;
  String? description;
  String? videoFile;
  String? thumbnail;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['title'] = title;
    map['description'] = description;
    map['video_file'] = videoFile;
    map['thumbnail'] = thumbnail;
    return map;
  }

}