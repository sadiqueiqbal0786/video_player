import 'package:video_player/video/data/video_source.dart';

class CoachVideoLib {
  String? id;
  String? title;
  String? description;
  String? thumbnailUrl;
  String? filterType;
  List<VideoSource>? videoSources;
   CoachVideoLib({
    this.id,
    this.title,
    this.description,
    this.thumbnailUrl,
    this.filterType,
    this.videoSources,
  });
  CoachVideoLib.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    description = json['description'];
    thumbnailUrl = json['thumbnailUrl'];
    filterType = json['filterType'];
    if (json['videoSources'] != null) {
      videoSources = <VideoSource>[];
      json['videoSources'].forEach((v) {
        videoSources!.add(VideoSource.fromJson(v));
      });
    }
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['title'] = title;
    data['description'] = description;
    data['thumbnailUrl'] = thumbnailUrl;
    data['filterType'] = filterType;
    if (videoSources != null) {
      data['videoSources'] = videoSources!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}