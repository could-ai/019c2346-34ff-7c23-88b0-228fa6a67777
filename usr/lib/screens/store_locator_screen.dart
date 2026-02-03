import 'package:flutter/material.dart';

class StoreLocatorScreen extends StatelessWidget {
  const StoreLocatorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Store Locator'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TextField(
              decoration: const InputDecoration(hintText: 'Type address or zip code'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Search'),
            ),
            Container(
              height: 300,
              color: Colors.grey.shade300,
              child: const Center(child: Text('Embedded Map Placeholder')),
            ),
            const Text('List Results'),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 5,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text('Store $index'),
                  subtitle: const Text('Address'),
                );
              },
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    Image.network('https://via.placeholder.com/300x200?text=Bakery+Section'),
                    const Text('Pick us up in the bakery section'),
                  ],
                ),
              ),
            ),
            const Text('Online Partners'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(3, (index) {
                return Card(
                  child: Image.network('https://via.placeholder.com/100x100?text=Partner'),
                );
              }),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Download Coupon'),
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    const Text('Want to stock Panaji Naan?'),
                    ElevatedButton(
                      onPressed: () => Navigator.pushNamed(context, '/contact'),
                      child: const Text('Contact CTA'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}