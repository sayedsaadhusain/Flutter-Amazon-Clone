import 'package:flutter/material.dart';

class Productcard extends StatelessWidget {
  const Productcard({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          child: Stack(
            children: [
              Image(
                image: NetworkImage("http://picsum.photos/400/300?$index"),
                height: 200,
                width: 150,
                fit: BoxFit.cover,
              ),
              const Positioned(
                top: 8,
                right: 8,
                child: Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Icon(
                    Icons.favorite_border,
                    color: Colors.red,
                    size: 24,
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 2),
        const Text("Men's shoes"),
        const Text(
          "Nike Air VaporMax Evo",
          style: TextStyle(fontWeight: FontWeight.w700),
        ),
        // const SizedBox(height: 2),
        const Text(
          "\$100.00",
          style: TextStyle(
            color: Colors.green,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
