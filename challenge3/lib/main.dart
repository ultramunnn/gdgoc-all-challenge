import 'package:flutter/material.dart';

void main() {
  runApp(const CaseStudy3());
}

class CaseStudy3 extends StatelessWidget {
  const CaseStudy3({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(),
          body: const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // TODO: Add a NewsCard widget here
                // HINT: Use `NewsCard` with a title and imageUrl for each news article

                NewsCard(
                  title: 'Indonesia vs Japan',
                  imageUrl:
                      'https://thumb.viva.id/vivamindset/665x374/2024/11/15/6736ba3e53779-timnas-indonesia-vs-jepang-bertabung-pemain-bintang_mindset.jpg',
                ),

                SizedBox(height: 16),

                NewsCard(
                  title: 'Indonesia vs Arab Saudi',
                  imageUrl:
                      'https://aksi.co/wp-content/uploads/2024/11/timnas-indonesia-vs-arab-saudi-jpg-1-1536x866.webp',
                ),

                // TODO: Add a SizedBox with height: 16 for spacing

                // TODO: Add a second NewsCard widget here
              ],
            ),
          ),
        ));
  }
}

class NewsCard extends StatelessWidget {
  final String title;
  final String imageUrl;

  const NewsCard({super.key, required this.title, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      // TODO: Add elevation for a slight shadow effect
      // HINT: Use `elevation: 4` for a balanced shadow

      // TODO: Set shape for rounded corners
      // HINT: Use `RoundedRectangleBorder` with `BorderRadius.circular(12)`

      // TODO: Add margin to give space around each NewsCard
      // HINT: Try `EdgeInsets.symmetric(horizontal: 16, vertical: 8)` for the margin

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // TODO: Add an image and a Text widget for the news title
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(12), // Membulatkan sudut kiri atas
              topRight: Radius.circular(12), // Membulatkan sudut kanan atas
            ),
            child: Image.network(
              imageUrl,
              height: 150, // Menyesuaikan tinggi gambar
              width: double.infinity, // Memastikan gambar memenuhi lebar kartu
              fit:
                  BoxFit.cover, // Memastikan gambar mengisi area tanpa distorsi
            ),
          ),

          Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ))),

          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: TextButton(
                onPressed: () {
                  // Action untuk tombol Read More
                },
                style: TextButton.styleFrom(
                  foregroundColor: Colors.blue, // Warna tombol
                  padding: const EdgeInsets.all(8.0), // Padding pada tombol
                ),
                child: const Text('Read More'),
              ))
        ],
      ),
    );
  }
}
