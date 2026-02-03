import 'package:flutter/material.dart';

class RecipesArchiveScreen extends StatelessWidget {
  const RecipesArchiveScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recipes Archive'),
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Cookbook',
              style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
            ),
          ),
          // Filter by Product
          const Text('Filter by Product'),
          Wrap(
            children: List.generate(4, (index) {
              return Chip(
                avatar: Image.network('https://via.placeholder.com/50x50?text=Prod'),
                label: Text('Product $index'),
                onDeleted: () {},
              );
            }),
          ),
          // Filter by Meal Type
          const Text('Filter by Meal Type'),
          Wrap(
            children: ['Appetizer', 'Breakfast', 'Dinner', 'Dip', 'Entertaining', 'Lunch', 'Snack'].map((tag) {
              return Chip(
                label: Text(tag),
                onDeleted: () {},
              );
            }).toList(),
          ),
          Row(
            children: [
              ElevatedButton(onPressed: () {}, child: const Text('Apply Filters')),
              TextButton(onPressed: () {}, child: const Text('Clear')),
            ],
          ),
          // Featured Recipe Highlight
          Container(
            height: 200,
            color: Colors.orange.shade100,
            child: const Center(child: Text('Featured Recipe Area')),
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemCount: 10,
              itemBuilder: (context, index) {
                return Card(
                  child: Column(
                    children: [
                      Image.network('https://via.placeholder.com/200x150?text=Recipe'),
                      const Text('Recipe Title'),
                      const Text('Prep/Cook/Serves'),
                      TextButton(
                        onPressed: () => Navigator.pushNamed(context, '/recipe-detail'),
                        child: const Text('View Recipe'),
                      ),
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