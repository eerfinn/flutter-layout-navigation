import 'package:flutter/material.dart';
import 'package:navigation_flutter/widgets/rating_widget.dart';

/// Widget untuk menampilkan rating produk dengan jumlah reviews
class ProductRatingSection extends StatelessWidget {
  final double rating;
  final double iconSize;

  const ProductRatingSection({
    super.key,
    required this.rating,
    this.iconSize = 24,
  });

  int get _reviewCount => (rating * 127).toInt();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RatingWidget(rating: rating, size: iconSize),
        const SizedBox(width: 8),
        Text(
          '($_reviewCount reviews)',
          style: TextStyle(
            fontSize: 14,
            color: Colors.grey[600],
          ),
        ),
      ],
    );
  }
}
