import 'package:flutter/material.dart';
import 'package:navigation_flutter/utils/price_formatter.dart';
import 'package:navigation_flutter/constants/app_constants.dart';

/// Widget untuk menampilkan harga produk
class ProductPrice extends StatelessWidget {
  final int price;
  final bool isLarge;

  const ProductPrice({
    super.key,
    required this.price,
    this.isLarge = false,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      PriceFormatter.formatWithCurrency(price),
      style: isLarge 
          ? AppConstants.priceLargeStyle 
          : AppConstants.priceStyle,
    );
  }
}
