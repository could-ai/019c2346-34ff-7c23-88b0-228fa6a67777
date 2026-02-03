import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Panaji Naan'),
        backgroundColor: Theme.of(context).colorScheme.primary,
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {},
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.orange,
              ),
              child: Text('Menu', style: TextStyle(color: Colors.white, fontSize: 24)),
            ),
            ListTile(
              title: const Text('Home'),
              onTap: () => Navigator.pushNamed(context, '/home'),
            ),
            ListTile(
              title: const Text('About'),
              onTap: () => Navigator.pushNamed(context, '/about'),
            ),
            ListTile(
              title: const Text('Our Products'),
              onTap: () => Navigator.pushNamed(context, '/shop'),
            ),
            ListTile(
              title: const Text('Offers'),
              onTap: () => Navigator.pushNamed(context, '/offers'),
            ),
            ListTile(
              title: const Text('Recipes'),
              onTap: () => Navigator.pushNamed(context, '/recipes-archive'),
            ),
            ListTile(
              title: const Text('Journal'),
              onTap: () => Navigator.pushNamed(context, '/journal'),
            ),
            ListTile(
              title: const Text('Find Us'),
              onTap: () => Navigator.pushNamed(context, '/store-locator'),
            ),
            ListTile(
              title: const Text('Contact'),
              onTap: () => Navigator.pushNamed(context, '/contact'),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Hero Section
            Container(
              height: 500,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage('https://via.placeholder.com/1200x500?text=Hero+Image'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Flame-Baked, Fluffy Naan',
                      style: TextStyle(
                        fontSize: 48,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () => Navigator.pushNamed(context, '/shop'),
                      child: const Text('Shop Now'),
                    ),
                  ],
                ),
              ),
            ),
            // Featured Products Grid
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                'Featured Products',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
            ),
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemCount: 6,
              itemBuilder: (context, index) {
                return Card(
                  child: Column(
                    children: [
                      Image.network('https://via.placeholder.com/200x200?text=Product'),
                      const Text('Product Title'),
                      const Text('Short tagline'),
                      TextButton(
                        onPressed: () => Navigator.pushNamed(context, '/product-detail'),
                        child: const Text('View Product'),
                      ),
                    ],
                  ),
                );
              },
            ),
            // Product Benefit Icons Row
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Icon(Icons.check_circle, size: 48),
                      Text('0g trans fat'),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.restaurant, size: 48),
                      Text('Real ghee butter'),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.no_food, size: 48),
                      Text('Nut free'),
                    ],
                  ),
                ],
              ),
            ),
            // Brand Story Block
            Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  const Text(
                    'We\'re not like other naan',
                    style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    'Supporting paragraph about the brand story.',
                    style: TextStyle(fontSize: 18),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Our Process'),
                  ),
                ],
              ),
            ),
            // Featured Recipes Carousel
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                'Featured Recipes',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 300,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Card(
                    child: SizedBox(
                      width: 250,
                      child: Column(
                        children: [
                          Image.network('https://via.placeholder.com/250x150?text=Recipe'),
                          const Text('Recipe Title'),
                          const Text('Prep: 10m Cook: 20m Serves: 4'),
                          TextButton(
                            onPressed: () => Navigator.pushNamed(context, '/recipe-detail'),
                            child: const Text('View Recipe'),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/recipes-archive'),
              child: const Text('View All Recipes'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey,
              ),
            ),
            // Reviews/Testimonials Slider
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                'What Our Customers Say',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 200,
              child: PageView.builder(
                itemCount: 8,
                itemBuilder: (context, index) {
                  return Card(
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        children: [
                          const Text('Short headline'),
                          const Text('Review text here.'),
                          const Text('Reviewer Name - Source'),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            // Store Locator Teaser
            Container(
              padding: const EdgeInsets.all(20),
              color: Colors.lightBlue.shade100,
              child: Column(
                children: [
                  const Text('Find Us Near You'),
                  const Text('Short text about store locator.'),
                  ElevatedButton(
                    onPressed: () => Navigator.pushNamed(context, '/store-locator'),
                    child: const Text('Store Locator'),
                  ),
                ],
              ),
            ),
            // Social/Instagram Teaser
            Container(
              padding: const EdgeInsets.all(20),
              color: Colors.pink.shade100,
              child: Column(
                children: [
                  const Text('Join the Table'),
                  const Text('@panajinaan'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(icon: const Icon(Icons.camera_alt), onPressed: () {}),
                      IconButton(icon: const Icon(Icons.facebook), onPressed: () {}),
                    ],
                  ),
                ],
              ),
            ),
            // Newsletter Signup
            Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  const Text('Stay in the Loop'),
                  const Text('Sign up for our newsletter'),
                  TextField(decoration: const InputDecoration(hintText: 'Email')),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Submit'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(10),
        color: Colors.grey.shade200,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Text('Newsletter signup'),
            Row(
              children: [
                IconButton(icon: const Icon(Icons.camera_alt), onPressed: () {}),
                IconButton(icon: const Icon(Icons.facebook), onPressed: () {}),
              ],
            ),
            const Text('USA / CAN EN / CAN FR'),
            TextButton(onPressed: () => Navigator.pushNamed(context, '/contact'), child: const Text('Contact')),
            TextButton(onPressed: () => Navigator.pushNamed(context, '/faq'), child: const Text('FAQs')),
            TextButton(onPressed: () => Navigator.pushNamed(context, '/privacy-policy'), child: const Text('Privacy Policy')),
          ],
        ),
      ),
    );
  }
}