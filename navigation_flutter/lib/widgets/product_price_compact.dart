import 'package:flutter/material.dart';
import 'package:navigation_flutter/utils/price_formatter.dart';

/// Widget compact untuk menampilkan harga produk
/// Digunakan di header detail page
class ProductPriceCompact extends StatelessWidget {
  final int price;

  const ProductPriceCompact({
    super.key,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
     
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Price',
            style: TextStyle(
              fontSize: 12,
              color: Colors.blue.withValues(alpha: 0.9),
              fontWeight: FontWeight.w500,
              letterSpacing: 0.5,
            ),
          ),
          const SizedBox(height: 6),
          Text(
            PriceFormatter.formatWithCurrency(price),
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
              letterSpacing: 0.5,
            ),
          ),
        ],
      ),
    );
  }
}
