import 'package:flutter/material.dart';
import 'package:video_player/video/video_screen.dart';
import 'package:video_player/video/widgets/place_holder_card.dart';

class AsignedVideo extends StatefulWidget {
  const AsignedVideo({super.key});

  @override
  State<AsignedVideo> createState() => _AsignedVideoState();
}

class _AsignedVideoState extends State<AsignedVideo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: const Text('Video Library', style: TextStyle(color: Colors.white)),
      
      ),
      body: Column(
        children: [
        ListTile(
          title: const Text('1. Workouts Assigned', style: TextStyle(fontSize: 20)),
          trailing: OutlinedButton.icon(onPressed: (){}, label: const Text('Instruction'), icon: const Icon(Icons.notes, color: Colors.lightGreen), style: OutlinedButton.styleFrom(foregroundColor: Colors.lightGreen,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          side: const BorderSide(color: Colors.lightGreen, width: 1.5),
          )),
        ),
        const SizedBox(height: 20),
         GestureDetector(
          onTap: () {
            // Navigate to video player screen
             Navigator.push(context, MaterialPageRoute(builder: (context) => VideoScreen()));
          },
          child: PlaceHolderCard())
        ],
      ),
    );
  }
}