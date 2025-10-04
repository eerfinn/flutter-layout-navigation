import 'package:flutter/material.dart';
import 'package:navigation_flutter/constants/app_constants.dart';

/// Widget card untuk menampilkan informasi stock produk
/// Menampilkan status stock dengan warna yang berbeda
class StockCard extends StatelessWidget {
  final int stock;

  const StockCard({super.key, required this.stock});

  bool get _isAvailable => stock > AppConstants.lowStockThreshold;
  bool get _isLowStock => stock > AppConstants.outOfStockThreshold && 
                          stock <= AppConstants.lowStockThreshold;

  Color get _backgroundColor {
    if (_isAvailable) return Colors.green[50]!;
    if (_isLowStock) return Colors.orange[50]!;
    return Colors.red[50]!;
  }

  Color get _borderColor {
    if (_isAvailable) return Colors.green;
    if (_isLowStock) return Colors.orange;
    return Colors.red;
  }

  Color get _textColor {
    if (_isAvailable) return Colors.green[800]!;
    if (_isLowStock) return Colors.orange[800]!;
    return Colors.red[800]!;
  }

  String get _stockStatus {
    if (_isAvailable) return 'Ready to ship';
    if (_isLowStock) return 'Limited stock';
    return 'Out of stock';
  }

  IconData get _stockIcon {
    if (_isAvailable) return Icons.check_circle;
    if (_isLowStock) return Icons.warning_amber_rounded;
    return Icons.cancel;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: AppConstants.spacingXLarge,
        horizontal: AppConstants.paddingLarge,
      ),
      decoration: BoxDecoration(
        color: _backgroundColor,
        borderRadius: BorderRadius.circular(AppConstants.borderRadiusLarge),
        border: Border.all(color: _borderColor, width: 2),
        boxShadow: [
          BoxShadow(
            color: _borderColor.withValues(alpha: 0.2),
            blurRadius: 8,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildStockInfo(),
          _buildStockAmount(),
        ],
      ),
    );
  }

  Widget _buildStockInfo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Stock Available',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Colors.grey[700],
          ),
        ),
        const SizedBox(height: AppConstants.spacingSmall),
        Text(
          _stockStatus,
          style: TextStyle(fontSize: 12, color: Colors.grey[600]),
        ),
      ],
    );
  }

  Widget _buildStockAmount() {
    return Row(
      children: [
        Icon(_stockIcon, color: _borderColor, size: 24),
        const SizedBox(width: AppConstants.spacingMedium),
        Text(
          '$stock pcs',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: _textColor,
          ),
        ),
      ],
    );
  }
}
