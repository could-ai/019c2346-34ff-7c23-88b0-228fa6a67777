import 'package:flutter/material.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shop'),
      ),
      body: Column(
        children: [
          // Filter Chips
          Wrap(
            spacing: 8.0,
            children: [
              Chip(label: const Text('Minis'), onDeleted: () {}),
              Chip(label: const Text('Snack-Sized'), onDeleted: () {}),
              Chip(label: const Text('2-pack'), onDeleted: () {}),
              Chip(label: const Text('4-pack'), onDeleted: () {}),
            ],
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemCount: 20, // Mock products
              itemBuilder: (context, index) {
                return Card(
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Image.network('https://via.placeholder.com/200x200?text=Product'),
                          if (index % 5 == 0) const Positioned(
                            top: 0,
                            right: 0,
                            child: Chip(label: Text('NEW')),
                          ),
                        ],
                      ),
                      const Text('Product Name'),
                      const Text('Quick tagline'),
                    ],
                  ),
                );
              },
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Load More'),
          ),
        ],
      ),
    );
  }
}