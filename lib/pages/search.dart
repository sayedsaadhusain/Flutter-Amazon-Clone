import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search'),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Search Bar
            TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                contentPadding: const EdgeInsets.symmetric(vertical: 0),
              ),
            ),
            const SizedBox(height: 16),
            // List of Offers
            Expanded(
              child: ListView(
                children: const [
                  _OfferCard(
                    imageUrl: 'https://picsum.photos/400/300.webp?1',
                    title: 'Top & T-Shirt Collection',
                    discount: '25% OFF',
                  ),
                  SizedBox(height: 16),
                  _OfferCard(
                    imageUrl: 'https://picsum.photos/400/300.webp?2',
                    title: 'Top & T-Shirt Collection',
                    discount: '30% OFF',
                  ),
                  SizedBox(height: 16),
                  _OfferCard(
                    imageUrl: 'https://picsum.photos/400/300.webp?4',
                    title: 'Top & T-Shirt Collection',
                    discount: '20% OFF',
                  ),
                  SizedBox(height: 16),
                  _OfferCard(
                    imageUrl: 'https://picsum.photos/400/300.webp?5',
                    title: 'Top & T-Shirt Collection',
                    discount: '20% OFF',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _OfferCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String discount;

  const _OfferCard({
    required this.imageUrl,
    required this.title,
    required this.discount,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Stack(
        children: [
          Image.network(
            imageUrl,
            height: 140,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Positioned(
            left: 16,
            top: 16,
            child: Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 14,
                shadows: [Shadow(blurRadius: 2, color: Colors.black)],
              ),
            ),
          ),
          Positioned(
            left: 16,
            bottom: 16,
            child: Text(
              discount,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18,
                shadows: [Shadow(blurRadius: 2, color: Colors.black)],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
