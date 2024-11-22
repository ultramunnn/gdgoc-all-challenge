import 'package:flutter/material.dart';

void main() {
  runApp(const StudyCase4());
}

class StudyCase4 extends StatelessWidget {
  const StudyCase4({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Image.network(
                    'https://www.blok-a.com/wp-content/uploads/2023/02/f3e390397ae8fac486c53145f45ea34959fe40a8.png.webp',
                    height: 200,
                    width: 600,
                  ),
                ],
              ),
              SizedBox(height: 16),
              Text(
                'DALBOFEST',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w900),
              ),
              Text('Goes To Campus',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
              Text('Date: 25 Februari 2023 '),
              Text('Time: 18:00 PM '),
              Text('Location: Malang, Jawa Timur'),
              SizedBox(height: 20),
              
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () {}, child: const Text('Buy Tiket')),
                  SizedBox(width: 20),
                  ElevatedButton(onPressed: () {}, child: const Text('Share'))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
