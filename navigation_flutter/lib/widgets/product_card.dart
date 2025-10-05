import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:navigation_flutter/models/item.dart';
import 'package:navigation_flutter/constants/app_constants.dart';
import 'package:navigation_flutter/utils/app_router.dart';
import 'package:navigation_flutter/widgets/product_image.dart';
import 'package:navigation_flutter/widgets/product_name.dart';
import 'package:navigation_flutter/widgets/product_price.dart';
import 'package:navigation_flutter/widgets/rating_widget.dart';
import 'package:navigation_flutter/widgets/stock_badge.dart';

/// Widget card untuk menampilkan produk di grid
/// Menampilkan gambar, nama, harga, rating, dan stock
class ProductCard extends StatelessWidget {
  final Item item;

  const ProductCard({super.key, required this.item});

  void _navigateToDetail(BuildContext context) {
    // Navigate dengan path parameter untuk nama item
    context.go(AppRouter.itemDetailPath(item.name), extra: item);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _navigateToDetail(context),
      borderRadius: BorderRadius.circular(AppConstants.borderRadiusLarge),
      child: Card(
        elevation: AppConstants.elevationMedium,
        shadowColor: Colors.blue.withValues(alpha: 0.2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppConstants.borderRadiusLarge),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Gambar Produk
            ProductImage(item: item),

            // Detail Produk
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(AppConstants.paddingMedium),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ProductName(name: item.name, maxLines: 1),
                    const SizedBox(height: AppConstants.spacingSmall),
                    ProductPrice(price: item.price),
                    const SizedBox(height: AppConstants.spacingMedium),
                    _buildBottomInfo(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBottomInfo() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        RatingWidget(rating: item.rating),
        StockBadge(stock: item.stock),
      ],
    );
  }
}
