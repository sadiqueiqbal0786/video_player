import 'package:flutter/material.dart';

class PlaceHolderCard extends StatelessWidget {
  const PlaceHolderCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
   
     
      decoration: BoxDecoration(
        
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        
        children: [
          AspectRatio(
            aspectRatio: 16 / 9,
            child:
               Image.network(
            'https://docs.flutter.dev/assets/images/dash/dash-fainting.gif',
          )
              
            
          ),
         
        ListTile(
          tileColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          
          title: const Text('Workout Name', style: TextStyle(fontSize: 20, color: Colors.black)),
          subtitle: const Text('Workout Description', style: TextStyle(color: Colors.grey)),

        ),
        ],
      ),
    );
  }
}