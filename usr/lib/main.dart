import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/shop_screen.dart';
import 'screens/product_detail_screen.dart';
import 'screens/recipes_archive_screen.dart';
import 'screens/recipe_detail_screen.dart';
import 'screens/journal_screen.dart';
import 'screens/article_detail_screen.dart';
import 'screens/offers_screen.dart';
import 'screens/store_locator_screen.dart';
import 'screens/about_screen.dart';
import 'screens/contact_screen.dart';
import 'screens/faq_screen.dart';
import 'screens/privacy_policy_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Panaji Naan Inspired Food Brand',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
        fontFamily: 'Poppins',
        textTheme: const TextTheme(
          displayLarge: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
          titleLarge: TextStyle(fontSize: 36.0, fontWeight: FontWeight.bold),
          bodyMedium: TextStyle(fontSize: 14.0),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.orange,
            foregroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
            textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/home': (context) => const HomeScreen(),
        '/shop': (context) => const ShopScreen(),
        '/product-detail': (context) => const ProductDetailScreen(),
        '/recipes-archive': (context) => const RecipesArchiveScreen(),
        '/recipe-detail': (context) => const RecipeDetailScreen(),
        '/journal': (context) => const JournalScreen(),
        '/article-detail': (context) => const ArticleDetailScreen(),
        '/offers': (context) => const OffersScreen(),
        '/store-locator': (context) => const StoreLocatorScreen(),
        '/about': (context) => const AboutScreen(),
        '/contact': (context) => const ContactScreen(),
        '/faq': (context) => const FaqScreen(),
        '/privacy-policy': (context) => const PrivacyPolicyScreen(),
      },
    );
  }
}