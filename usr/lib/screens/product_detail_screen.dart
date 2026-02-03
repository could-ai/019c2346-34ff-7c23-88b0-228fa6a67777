import 'package:flutter/material.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Detail'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Product Gallery
            SizedBox(
              height: 300,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Image.network('https://via.placeholder.com/300x300?text=Product+Image');
                },
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Product Title',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text('Short description paragraph.'),
            ),
            // Variant Selectors
            Row(
              children: [
                const Text('Flavor: '),
                DropdownButton<String>(
                  items: ['Original', 'Garlic', 'Butter'].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (_) {},
                ),
              ],
            ),
            Row(
              children: [
                const Text('Size: '),
                DropdownButton<String>(
                  items: ['2-pack', '4-pack'].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (_) {},
                ),
              ],
            ),
            // CTAs
            Row(
              children: [
                ElevatedButton(
                  onPressed: () => Navigator.pushNamed(context, '/store-locator'),
                  child: const Text('Find a Retailer'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Buy Online'),
                ),
              ],
            ),
            // Ingredients
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Ingredients',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            const Text('Rich text ingredients list.'),
            // Nutrition Facts
            const Text('Nutrition Facts Image'),
            Image.network('https://via.placeholder.com/300x400?text=Nutrition+Facts'),
            // Icon Grid
            GridView.count(
              shrinkWrap: true,
              crossAxisCount: 3,
              children: List.generate(6, (index) {
                return Column(
                  children: [
                    Icon(Icons.star, size: 48),
                    const Text('Icon Text'),
                  ],
                );
              }),
            ),
            // Heating Instructions
            const Text('Heating Instructions'),
            Row(
              children: [
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      children: [
                        Icon(Icons.whatshot, size: 48),
                        const Text('Broil'),
                        const Text('Instructions'),
                      ],
                    ),
                  ),
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      children: [
                        Icon(Icons.thermostat, size: 48),
                        const Text('Warm'),
                        const Text('Instructions'),
                      ],
                    ),
                  ),
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      children: [
                        Icon(Icons.microwave, size: 48),
                        const Text('Microwave'),
                        const Text('Instructions'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            // FAQs Accordion
            ExpansionPanelList(
              expansionCallback: (int index, bool isExpanded) {},
              children: [
                ExpansionPanel(
                  headerBuilder: (BuildContext context, bool isExpanded) {
                    return const ListTile(title: Text('FAQ Question 1'));
                  },
                  body: const ListTile(title: Text('Answer 1')),
                ),
                // Add more panels
              ],
            ),
            // Related Recipes
            const Text('Related Recipes'),
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
              itemCount: 3,
              itemBuilder: (context, index) {
                return Card(
                  child: Column(
                    children: [
                      Image.network('https://via.placeholder.com/150x100?text=Recipe'),
                      const Text('Recipe Title'),
                      TextButton(
                        onPressed: () => Navigator.pushNamed(context, '/recipe-detail'),
                        child: const Text('View Recipe'),
                      ),
                    ],
                  ),
                );
              },
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/recipes-archive'),
              child: const Text('View All Recipes'),
            ),
          ],
        ),
      ),
    );
  }
}