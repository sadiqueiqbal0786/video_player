import 'package:better_player_plus/better_player_plus.dart';
import 'package:video_player/video/data/video_source.dart';

List<BetterPlayerDataSource> createDataSet(List<VideoSource> sources) {
  return sources.map((source) => BetterPlayerDataSource(
    source.type,
    source.videoUrl,
  )).toList();
}