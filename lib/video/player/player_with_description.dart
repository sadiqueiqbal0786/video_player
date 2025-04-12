import 'package:better_player_plus/better_player_plus.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video/data/video_source.dart';

class PlayerWithDescription extends StatefulWidget {
  final VideoSource videoSource;
  const PlayerWithDescription({super.key, required this.videoSource});

  @override
  State<PlayerWithDescription> createState() => _PlayerWithDescriptionState();
}

class _PlayerWithDescriptionState extends State<PlayerWithDescription> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // transparent app bar with opacity
      
      body: SafeArea(
        child: Column(
          children: [
           Stack(
        
             children: [
               AspectRatio(
                       aspectRatio: 16 / 9,
                       child: BetterPlayer.network(
                widget.videoSource.videoUrl,
                betterPlayerConfiguration: BetterPlayerConfiguration(
                  autoPlay: true,
                  aspectRatio: 16 / 9,
                ),
                       ),
                     ),
                Positioned(
                  top: 0,
                
                  child: Container(
                    width: MediaQuery.of(context).size.width ,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.5),
                      
                    ),
                    child: Row(
                      children: [
                        IconButton(
                          icon: const Icon(Icons.arrow_back, color: Colors.white),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                        const SizedBox(width: 10),
                         Text(
                          '${widget.videoSource.title}',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                ),
             ],
           ),
         ListTile(
            tileColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            title: Text(widget.videoSource.title??'No Title', style: const TextStyle(fontSize: 20, color: Colors.black)),
            subtitle: Text('No Description', style: const TextStyle(color: Colors.grey)),
          ),
          ],
        ),
      ),
    );
  }
}