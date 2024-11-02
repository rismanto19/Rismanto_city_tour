import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'city tour',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: citytour(),
    );
  }
}

class citytour extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('city tour'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Image.network(
              'https://picsum.photos/id/162/300/200'
              'https://picsum.photos/id/164/300/200'
              'https://picsum.photos/id/174/300/200',
              fit: BoxFit.cover,
              width: 150,
              height: 300,
            ),
            const Padding(
                padding: EdgeInsets.all(16.0),

                child: Text(
                  'Explore, Enjoy, Experiece',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),

              ),
            const Padding(
                padding: EdgeInsets.all(16.0),
            child: Text(
            "Explore the charm of our city s hidden gems and embark on a journey to discover the rich cultural heritage, breathtaking landscapes, and unique experiences that await you. From historic landmarks to vibrant markets and serene natural wonders, our city  offers a tapestry of experiences that will captivate your senses. Join us in exploring the beauty of our city and create memories that will last a lifetime. Come and visit our city s treasures today",
              style: TextStyle(fontSize: 16),
            ),
            ),
            const SizedBox(height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Image.network(
              'https://picsum.photos/id/162/200/300',
                height: 250,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            )

          ],
        ),
      ),
    ); // This trailing comma makes auto-formatting nicer for build methods.
  }
}
