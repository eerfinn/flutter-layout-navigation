import 'package:flutter/material.dart';

/// Constants untuk styling dan konfigurasi aplikasi
class AppConstants {
  // Border Radius
  static const double borderRadiusSmall = 8.0;
  static const double borderRadiusMedium = 12.0;
  static const double borderRadiusLarge = 16.0;

  // Padding & Spacing
  static const double paddingSmall = 8.0;
  static const double paddingMedium = 12.0;
  static const double paddingLarge = 20.0;
  static const double spacingSmall = 4.0;
  static const double spacingMedium = 8.0;
  static const double spacingLarge = 12.0;
  static const double spacingXLarge = 16.0;
  static const double spacingXXLarge = 24.0;

  // Elevations
  static const double elevationLow = 3.0;
  static const double elevationMedium = 4.0;

  // Stock Thresholds
  static const int lowStockThreshold = 20;
  static const int outOfStockThreshold = 0;

  // Grid Configuration
  static const int gridCrossAxisCount = 2;
  static const double gridCrossAxisSpacing = 12.0;
  static const double gridMainAxisSpacing = 12.0;
  static const double gridChildAspectRatio = 0.68;

  // Hero Image
  static const double heroImageHeight = 350.0;

  // Text Styles
  static const TextStyle appBarTitleStyle = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle productNameStyle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: Colors.black87,
  );

  static const TextStyle productNameLargeStyle = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.bold,
    color: Colors.black87,
  );

  static const TextStyle priceStyle = TextStyle(
    fontSize: 15,
    color: Colors.blue,
    fontWeight: FontWeight.w700,
  );

  static const TextStyle priceLargeStyle = TextStyle(
    fontSize: 26,
    fontWeight: FontWeight.bold,
    color: Colors.blue,
  );
}
