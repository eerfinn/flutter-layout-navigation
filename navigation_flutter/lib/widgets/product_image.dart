import 'package:flutter/material.dart';
import 'package:navigation_flutter/models/item.dart';
import 'package:navigation_flutter/constants/app_constants.dart';

/// Widget untuk menampilkan gambar produk di ProductCard
/// Menggunakan Hero animation untuk transisi ke halaman detail
class ProductImage extends StatelessWidget {
  final Item item;

  const ProductImage({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Hero(
        tag: 'product-${item.name}',
        child: Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.vertical(
              top: Radius.circular(AppConstants.borderRadiusLarge),
            ),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.transparent, Colors.black.withValues(alpha: 0.1)],
            ),
          ),
          child: ClipRRect(
            borderRadius: const BorderRadius.vertical(
              top: Radius.circular(AppConstants.borderRadiusLarge),
            ),
            child: Image.asset(
              item.image,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return _buildErrorPlaceholder();
              },
            ),
          ),
        ),
      ),
    );
  }

  /// Placeholder ketika gambar gagal dimuat
  Widget _buildErrorPlaceholder() {
    return Container(
      color: Colors.grey[200],
      child: const Icon(
        Icons.image_not_supported,
        size: 50,
        color: Colors.grey,
      ),
    );
  }
}
