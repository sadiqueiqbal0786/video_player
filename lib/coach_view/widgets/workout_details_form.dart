import 'package:flutter/material.dart';

class WorkoutDetailsScreen extends StatefulWidget {
  const WorkoutDetailsScreen({super.key});

  @override
  State<WorkoutDetailsScreen> createState() => _WorkoutDetailsScreenState();
}

class _WorkoutDetailsScreenState extends State<WorkoutDetailsScreen> {
  bool sendReminders = true;
  final TextEditingController titleController = TextEditingController();
  final TextEditingController instructionsController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        leading: const BackButton(color: Colors.white),
        title: const Text(
          'Workout Details',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            const Text("Title", style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 6),
            TextField(
              controller: titleController,
              decoration: InputDecoration(
                hintText: "Workout Title",
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
              ),
            ),
            const SizedBox(height: 16),

            const Text("Workouts", style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 6),
            GestureDetector(
              onTap: () {
                // TODO: Implement Select Workouts
              },
              child: Container(
                height: 120,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.add_circle, color: Colors.lightGreen, size: 40),
                      SizedBox(height: 8),
                      Text("Select Workouts"),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),

            const Text("Instructions", style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 6),
            TextField(
              controller: instructionsController,
              maxLines: 4,
              decoration: InputDecoration(
                hintText: "Instructions (Optional)",
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
              ),
            ),
            const SizedBox(height: 16),

            const Text(
              "Do you want to send Reminders for this workout? (Optional)",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 6),
            Row(
              children: [
                Row(
                  children: [
                    Radio(
                      value: true,
                      groupValue: sendReminders,
                      activeColor: Colors.lightGreen,
                      onChanged: (value) {
                        setState(() => sendReminders = value!);
                      },
                    ),
                    const Text("Yes"),
                  ],
                ),
                Row(
                  children: [
                    Radio(
                      value: false,
                      groupValue: sendReminders,
                      activeColor: Colors.lightGreen,
                      onChanged: (value) {
                        setState(() => sendReminders = value!);
                      },
                    ),
                    const Text("No"),
                  ],
                ),
              ],
            ),

            if (sendReminders)
              Container(
                padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: const [
                    Icon(Icons.add, color: Colors.grey),
                    SizedBox(width: 8),
                    Text("Add Time", style: TextStyle(color: Colors.grey)),
                  ],
                ),
              ),

            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: null, // Set to null to disable the button
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey.shade400,
                disabledBackgroundColor: Colors.grey.shade400,
                foregroundColor: Colors.white,
                minimumSize: const Size.fromHeight(50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
              ),
              child: const Text("Assign Workouts"),
            ),
          ],
        ),
      ),
    );
  }
}
