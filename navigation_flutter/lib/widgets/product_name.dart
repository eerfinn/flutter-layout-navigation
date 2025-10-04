import 'package:flutter/material.dart';
import 'package:navigation_flutter/constants/app_constants.dart';

/// Widget untuk menampilkan nama produk
class ProductName extends StatelessWidget {
  final String name;
  final bool isLarge;
  final int? maxLines;

  const ProductName({
    super.key,
    required this.name,
    this.isLarge = false,
    this.maxLines,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: isLarge 
          ? AppConstants.productNameLargeStyle 
          : AppConstants.productNameStyle,
      maxLines: maxLines,
      overflow: maxLines != null ? TextOverflow.ellipsis : null,
    );
  }
}
