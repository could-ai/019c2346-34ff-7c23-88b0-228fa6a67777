import 'package:flutter/material.dart';

class OffersScreen extends StatelessWidget {
  const OffersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Offers'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {},
              child: const Text('Digital Offer CTA'),
            ),
            Card(
              child: Column(
                children: [
                  Image.network('https://via.placeholder.com/300x200?text=Coupon'),
                  TextButton(
                    onPressed: () {},
                    child: const Text('Download Coupon'),
                  ),
                ],
              ),
            ),
            // Benefit Icons Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Icon(Icons.check_circle, size: 48),
                    const Text('Benefit 1'),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.restaurant, size: 48),
                    const Text('Benefit 2'),
                  ],
                ),
              ],
            ),
            // Store Locator Teaser
            Container(
              padding: const EdgeInsets.all(20),
              color: Colors.lightBlue.shade100,
              child: Column(
                children: [
                  const Text('Find Us Near You'),
                  ElevatedButton(
                    onPressed: () => Navigator.pushNamed(context, '/store-locator'),
                    child: const Text('Store Locator'),
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