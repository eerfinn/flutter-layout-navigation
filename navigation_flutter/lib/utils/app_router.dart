import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:navigation_flutter/models/item.dart';
import 'package:navigation_flutter/pages/home_page.dart';
import 'package:navigation_flutter/pages/item_page.dart';

/// Konfigurasi routing aplikasi menggunakan go_router
class AppRouter {
  static const String home = '/';
  static const String itemDetail = '/item';

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
        path: itemDetail,
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
