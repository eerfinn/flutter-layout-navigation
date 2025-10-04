import 'package:flutter/material.dart';
import 'package:navigation_flutter/constants/app_constants.dart';

/// Widget untuk menampilkan rating produk dengan bintang
/// Dapat dikustomisasi ukuran dan menampilkan/menyembunyikan teks rating
class RatingWidget extends StatelessWidget {
  final double rating;
  final double size;
  final bool showText;

  const RatingWidget({
    super.key,
    required this.rating,
    this.size = 16,
    this.showText = true,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.star, size: size, color: Colors.amber),
        const SizedBox(width: AppConstants.spacingSmall),
        if (showText) _buildRatingText(),
      ],
    );
  }

  Widget _buildRatingText() {
    return Text(
      rating.toStringAsFixed(1),
      style: TextStyle(
        fontSize: size * 0.75,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
