import 'package:better_player_plus/better_player_plus.dart';

class VideoSource {
  final BetterPlayerDataSourceType type;
  final String videoUrl;  // Fixed typo (was "voideoUrl")
  final String? thumbnailUrl;
  final String? title;
  final Map<String, String>? headers; // Optional request headers (for network videos)

  VideoSource({
    required this.type,
    required this.videoUrl,
    this.thumbnailUrl,
    this.title,
    this.headers,
  });
  // Factory constructor to create a VideoSource from a JSON map
  factory VideoSource.fromJson(Map<String, dynamic> json) {
    return VideoSource(
      type: BetterPlayerDataSourceType.values[json['type']],
      videoUrl: json['videoUrl'],
      thumbnailUrl: json['thumbnailUrl'],
      title: json['title'],
      headers: json['headers'] != null
          ? Map<String, String>.from(json['headers'])
          : null,
    );
  }
  // Method to convert a VideoSource object to a JSON map
  Map<String, dynamic> toJson() {
    return {
      'type': type.index,
      'videoUrl': videoUrl,
      'thumbnailUrl': thumbnailUrl,
      'title': title,
      'headers': headers,
    };
  }
}
