import 'package:flutter/material.dart';

class RecipeDetailScreen extends StatelessWidget {
  const RecipeDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recipe Detail'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network('https://via.placeholder.com/400x250?text=Recipe+Image'),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Recipe Title',
                style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
              ),
            ),
            const Text('Short intro'),
            const Row(
              children: [
                Text('Prep: 10m'),
                Text('Cook: 20m'),
                Text('Serves: 4'),
              ],
            ),
            const Text('Ingredients List'),
            const Text('Grouped headings with ingredients'),
            const Text('Instructions Steps'),
            const Text('1. Step one'),
            const Text('2. Step two'),
            TextButton(
              onPressed: () => Navigator.pushNamed(context, '/product-detail'),
              child: const Text('Made with Product'),
            ),
            Row(
              children: [
                IconButton(icon: const Icon(Icons.share), onPressed: () {}),
                const Text('Share: FB/X/Pinterest'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}