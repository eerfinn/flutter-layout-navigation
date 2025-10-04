import 'package:flutter/material.dart';
import 'package:navigation_flutter/models/item.dart';
import 'package:navigation_flutter/constants/app_constants.dart';

/// Widget untuk menampilkan gambar produk dengan Hero animation
/// Digunakan di halaman detail produk
class HeroProductImage extends StatelessWidget {
  final Item item;

  const HeroProductImage({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'product-${item.name}',
      child: Stack(
        children: [
          Container(
            height: AppConstants.heroImageHeight,
            width: double.infinity,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.15),
                  blurRadius: 15,
                  offset: const Offset(0, 5),
                ),
              ],
            ),
            child: Image.asset(
              item.image,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  color: Colors.grey[200],
                  child: const Icon(
                    Icons.image_not_supported,
                    size: 100,
                    color: Colors.grey,
                  ),
                );
              },
            ),
          ),
          // Gradient overlay untuk efek lebih menarik
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 80,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    Colors.black.withValues(alpha: 0.3),
                    Colors.transparent,
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
