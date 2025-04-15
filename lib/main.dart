import 'package:flutter/material.dart';
import 'package:video_player/coach_view/coach_video_library.dart';
import 'package:video_player/video/Asigned_video.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CoachVideoLibrary(),
      debugShowCheckedModeBanner: false,
      title: 'Video Player',);
  }
}
