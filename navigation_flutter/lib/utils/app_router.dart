import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:navigation_flutter/models/item.dart';
import 'package:navigation_flutter/pages/home_page.dart';
import 'package:navigation_flutter/pages/item_page.dart';

/// Konfigurasi routing aplikasi menggunakan go_router
class AppRouter {
  static const String home = '/';
  static const String itemDetail = '/item';

  /// Helper method untuk membuat path detail item dengan nama
  static String itemDetailPath(String itemName) {
    // Convert item name ke URL-friendly format (lowercase, replace spaces with hyphens)
    final urlName = itemName.toLowerCase().replaceAll(' ', '-');
    return '$itemDetail/$urlName';
  }

  /// GoRouter instance untuk navigasi aplikasi
  static final GoRouter router = GoRouter(
    initialLocation: home,
    routes: [
      GoRoute(
        path: home,
        name: 'home',
        builder: (context, state) => HomePage(),
      ),
      GoRoute(
        path: '$itemDetail/:name',
        name: 'item',
        builder: (context, state) {
          final item = state.extra as Item;
          return ItemPage(item: item);
        },
      ),
    ],
    errorBuilder: (context, state) => Scaffold(
      appBar: AppBar(title: const Text('Error')),
      body: Center(
        child: Text('Page not found: ${state.uri}'),
      ),
    ),
  );
}
