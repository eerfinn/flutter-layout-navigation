import 'package:flutter/material.dart';
import 'package:navigation_flutter/constants/app_constants.dart';

/// Widget untuk menampilkan badge stock dalam bentuk kecil
/// Digunakan di ProductCard
class StockBadge extends StatelessWidget {
  final int stock;

  const StockBadge({
    super.key,
    required this.stock,
  });

  bool get _isLowStock => stock <= AppConstants.lowStockThreshold;

  Color get _backgroundColor => _isLowStock ? Colors.orange[50]! : Colors.green[50]!;

  Color get _borderColor => _isLowStock ? Colors.orange : Colors.green;

  Color get _textColor => _isLowStock ? Colors.orange[800]! : Colors.green[800]!;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppConstants.paddingSmall,
        vertical: AppConstants.spacingSmall,
      ),
      decoration: BoxDecoration(
        color: _backgroundColor,
        borderRadius: BorderRadius.circular(AppConstants.borderRadiusSmall),
        border: Border.all(
          color: _borderColor,
          width: 1,
        ),
      ),
      child: Text(
        '$stock',
        style: TextStyle(
          fontSize: 11,
          fontWeight: FontWeight.bold,
          color: _textColor,
        ),
      ),
    );
  }
}
