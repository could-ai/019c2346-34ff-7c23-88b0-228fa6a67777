import 'package:flutter/material.dart';

class ArticleDetailScreen extends StatelessWidget {
  const ArticleDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Article Detail'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network('https://via.placeholder.com/400x200?text=Hero+Image'),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Article Title',
                style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
              ),
            ),
            const Text('Date'),
            const Text('Article content typography here.'),
            Row(
              children: [
                IconButton(icon: const Icon(Icons.share), onPressed: () {}),
                const Text('Share buttons'),
              ],
            ),
            const Text('Related Posts'),
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
              itemCount: 3,
              itemBuilder: (context, index) {
                return Card(
                  child: Column(
                    children: [
                      Image.network('https://via.placeholder.com/150x100?text=Related'),
                      const Text('Related Article'),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}