import 'package:flutter/material.dart';

void main() {
  runApp(const CaseStudy2());
}

class CaseStudy2 extends StatelessWidget {
  const CaseStudy2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Column(
            // TODO: The alignment here doesn't match the expected outcome. Can you fix it?
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Image.network(
                    'https://www.bmw-tunas.co.id/wp-content/uploads/2023/06/BMW-520i-M-Sport-Lci-scaled.webp',
                    height: 250,
                    width: 250,
                    // TODO: Incorrect height. Can you find the right value?
                    fit: BoxFit
                        .contain, // TODO: This doesn’t quite fit the design! Try adjusting it.
                  ),
                  Positioned(
                    bottom: 10, // Jarak dari bawah
                    right: 10, // Jarak dari kanan
                    child: ElevatedButton(
                      onPressed: () {
                        // Action saat tombol diklik
                      },
                      child: Text('Buy Now'),
                    ),
                  ),
                  // TODO: Position the "Buy Now" button at the bottom right corner of the image
                ],
              ),
              Text('BMW 520i M Sport',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              Text('\$99,999',
                  style: TextStyle(fontSize: 20, color: Colors.green)),
              Text('This is Product that you will love', style: TextStyle (fontSize: 14)),
              // TODO: Add a Stack for the product image and "Buy Now" button here
              // TODO: Add Text widgets for product name, price, and description below
            ],
          ),
        ),
      ),
    );
  }
}
