import 'package:flutter/material.dart';

class JournalScreen extends StatelessWidget {
  const JournalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Journal'),
      ),
      body: Column(
        children: [
          // Featured Article
          Card(
            child: Column(
              children: [
                Image.network('https://via.placeholder.com/400x200?text=Featured+Article'),
                const Text('Featured Article Title'),
                TextButton(
                  onPressed: () => Navigator.pushNamed(context, '/article-detail'),
                  child: const Text('Read More'),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Image.network('https://via.placeholder.com/100x100?text=Article'),
                  title: Text('Article $index'),
                  subtitle: const Text('Date'),
                  trailing: TextButton(
                    onPressed: () => Navigator.pushNamed(context, '/article-detail'),
                    child: const Text('Read More'),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}