import 'package:flutter/material.dart';

void main() {
  runApp(CaseStudy1());
}

class CaseStudy1 extends StatelessWidget {
  const CaseStudy1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Menghilangkan banner debug
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  CircleAvatar(
                    radius: 60,
                    backgroundColor: Colors.grey[300],
                  ),
                  const CircleAvatar(
                    radius: 55,
                    backgroundImage: AssetImage('assets/profile.jpg'),
                  )
                ],
              ),
              const SizedBox(height: 16),
              const Text(
                'Muhammad Shirojul Munir',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const Text('Learn Flutter'),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // TODO: Add an ElevatedButton here to build the "Follow" button
                  ElevatedButton(onPressed: () {}, child: const Text('Follow')),
                  const SizedBox(width: 8),
                  ElevatedButton(
                      onPressed: () {}, child: const Text('Message')),
                  // TODO: Add an ElevatedButton here to build the "Message" button
                ],
              ),

              // TODO: Add a Stack here to build the profile image with a border effect
              // TODO: Add Text widgets for the name and role
              // TODO: Add a Row for action buttons (Follow and Message)
            ],
          ),
        ),
      ),
    );
  }
}
