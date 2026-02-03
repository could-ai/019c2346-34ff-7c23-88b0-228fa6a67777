import 'package:flutter/material.dart';

class FaqScreen extends StatelessWidget {
  const FaqScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FAQs'),
      ),
      body: ListView(
        children: [
          ExpansionTile(
            title: const Text('Question 1?'),
            children: [
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text('Answer 1.'),
              ),
            ],
          ),
          ExpansionTile(
            title: const Text('Question 2?'),
            children: [
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text('Answer 2.'),
              ),
            ],
          ),
          // Add more FAQs
        ],
      ),
    );
  }
}