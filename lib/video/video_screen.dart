import 'package:better_player_plus/better_player_plus.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video/data/data_source.dart';
import 'package:video_player/video/data/video_source.dart';
import 'package:video_player/video/player/player_with_description.dart';
import 'package:video_player/video/player/video_player.dart';
import 'package:video_player/video/widgets/place_holder_card.dart';


class VideoScreen extends StatefulWidget {
  const VideoScreen({super.key});

  @override
  State<VideoScreen> createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  final sources = [
  VideoSource(
    type: BetterPlayerDataSourceType.network,
    videoUrl: "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4",
    title: "For Bigger Blazes",
  ),
  VideoSource(
    type: BetterPlayerDataSourceType.network,
    videoUrl: "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4",
    title: "Big Buck Bunny",
  ),
  VideoSource(
    type: BetterPlayerDataSourceType.network,
    videoUrl: "http://sample.vodobox.com/skate_phantom_flex_4k/skate_phantom_flex_4k.m3u8",
    title: "Skate Phantom Flex 4K",
  ),

];

List<BetterPlayerDataSource> dataSourceList = [];

 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Column(
        children: [ 
        dataSourceList.isNotEmpty? 
            VideoPlayer(dataSourceList: dataSourceList)
          :
         PlaceHolderCard(),
          
          const SizedBox(height: 20),
          // lets go elevated button to add video to the list
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  dataSourceList = createDataSet(sources);
                });
              },
             style: ElevatedButton.styleFrom(
                backgroundColor: Colors.lightGreen,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                minimumSize: const Size(double.infinity, 50),
              ),
              child: const Text('Lets Go', style: TextStyle(color: Colors.white)),
             
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: sources.length,
              itemBuilder: (context, index) {
                return ListTile(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PlayerWithDescription(
                          videoSource: sources[index],
                        ),
                      ),
                    );
                  },
                     leading: Image.network(
  'https://docs.flutter.dev/assets/images/dash/dash-fainting.gif',
),
                  title: Text(sources[index].title ?? 'No Title'),
                  subtitle: Text('Workout Description'),
                );
              },
            ),
          ),
        ],

      )
    );
  }
}