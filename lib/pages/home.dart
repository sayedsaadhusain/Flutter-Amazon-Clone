import 'package:dashbord/components/product_card.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Amazon Clone'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                "http://picsum.photos/400/300?1",
                height: 300,
                width: 400,
              ),
              const SizedBox(height: 16),
              const Row(
                children: [
                  Text(
                    "Best of ODI",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                    ),
                  ),
                  Spacer(),
                  Text("show all"),
                  SizedBox(height: 40),
                ],
              ),
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Productcard(
                      index: 3,
                    ),
                    SizedBox(width: 16), // Gap between cards
                    Productcard(index: 4),
                    SizedBox(width: 16),
                    Productcard(index: 5),
                  ],
                ),
              ),
              const SizedBox(height: 24), // Space between cards and text
              const Text(
                "New Arrivals",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              const SizedBox(height: 12), // Optional spacing
              Image.network(
                "http://picsum.photos/400/300?2", // Replace with your image URL
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
