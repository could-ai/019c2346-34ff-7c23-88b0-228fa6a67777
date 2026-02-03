import 'package:flutter/material.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: const InputDecoration(labelText: 'Name'),
            ),
            TextField(
              decoration: const InputDecoration(labelText: 'Email'),
            ),
            TextField(
              decoration: const InputDecoration(labelText: 'Message'),
              maxLines: 5,
            ),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Message sent!')),
                );
              },
              child: const Text('Send'),
            ),
            const Text('Business contact details here.'),
          ],
        ),
      ),
    );
  }
}