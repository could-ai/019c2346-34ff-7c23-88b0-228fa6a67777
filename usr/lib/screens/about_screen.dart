import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage('https://via.placeholder.com/400x300?text=Brand+Imagery'),
                  fit: BoxFit.cover,
                ),
              ),
              child: const Center(
                child: Text(
                  'Big Headline',
                  style: TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Text(
                    'Process Step 1',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const Text('Keep it real'),
                  const SizedBox(height: 20),
                  Text(
                    'Process Step 2',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const Text('Slow with the dough'),
                  const SizedBox(height: 20),
                  Text(
                    'Process Step 3',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const Text('Fire away'),
                  const SizedBox(height: 20),
                  Text(
                    'Process Step 4',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const Text('Shipped fresh, stays fresh'),
                ],
              ),
            ),
            // Benefits Icon Grid
            GridView.count(
              shrinkWrap: true,
              crossAxisCount: 3,
              children: [
                Column(
                  children: [
                    Icon(Icons.eco, size: 48),
                    const Text('Small batch'),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.restaurant, size: 48),
                    const Text('Authentically inspired'),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.health_and_safety, size: 48),
                    const Text('Easy to digest'),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.local_dining, size: 48),
                    const Text('Real ghee butter'),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.schedule, size: 48),
                    const Text('Slow-fermented'),
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