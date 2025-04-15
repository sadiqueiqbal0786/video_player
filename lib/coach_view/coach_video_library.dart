import 'package:flutter/material.dart';
import 'package:video_player/coach_view/widgets/workout_details_form.dart';
import 'package:video_player/video/widgets/place_holder_card.dart';

class CoachVideoLibrary extends StatefulWidget {
  const CoachVideoLibrary({super.key});

  @override
  State<CoachVideoLibrary> createState() => _CoachVideoLibraryState();
}

class _CoachVideoLibraryState extends State<CoachVideoLibrary> {
  List<String> chips = [
    'All',
    'Workouts',
    'Nutrition',
    'Recovery',
    'Mobility',
    'Flexibility',
    'Strength',
    'Cardio',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: const Text('Video Library', style: TextStyle(color: Colors.white)),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              TextButton.icon(onPressed: (){}, label: const Text('Filter |', style: TextStyle(fontSize: 20)), icon: const Icon(Icons.filter, color: Colors.lightGreen), style: TextButton.styleFrom(foregroundColor: Colors.lightGreen,
              )),
              const SizedBox(width: 5),
               SizedBox(
                  height: 40,
                  width: MediaQuery.of(context).size.width*0.7 ,
                 child: ListView(
                  scrollDirection: Axis.horizontal,
               shrinkWrap: true,
                 
                  children: chips.map((e) {
                    return Padding(
                      padding: const EdgeInsets.only(left:8.0),
                      child: Chip(
                        label: Text(e, style: const TextStyle(color: Colors.lightGreen)),
                       // backgroundColor: Colors.lightGreen,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),
                        side: const BorderSide(color: Colors.lightGreen)),
                      ),
                    );
                  }).toList(),
                               ),
               ),

              
            ],
          ),
          const SizedBox(height: 20),
          GestureDetector(
            onTap: () {
              
            },
            child: const PlaceHolderCard())
        ],
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Assign Video',
   
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
        backgroundColor: Colors.lightGreen,
        onPressed: () {
         Navigator.push(context, MaterialPageRoute(builder: (context) => const WorkoutDetailsScreen()));
        },
        child: const Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}