import 'package:better_player_plus/better_player_plus.dart';
import 'package:flutter/material.dart';

class VideoPlayer extends StatefulWidget {
   final List<BetterPlayerDataSource> dataSourceList;
  const VideoPlayer({super.key, required this.dataSourceList});

  @override
  State<VideoPlayer> createState() => _VideoPlayerState();
}

class _VideoPlayerState extends State<VideoPlayer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(8.0),
      ),
     
child: AspectRatio(
      aspectRatio: 16 / 9,
      child: BetterPlayerPlaylist(
          betterPlayerConfiguration: BetterPlayerConfiguration(
            looping: false,
            autoPlay: true,
            controlsConfiguration: BetterPlayerControlsConfiguration(
            
             
            ),
          
          ),
          betterPlayerPlaylistConfiguration: const BetterPlayerPlaylistConfiguration(),
          betterPlayerDataSourceList: widget.dataSourceList,),
    ),
    );
  }
}