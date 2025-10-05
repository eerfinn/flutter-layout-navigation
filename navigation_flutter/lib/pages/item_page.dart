import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:navigation_flutter/models/item.dart';
import 'package:navigation_flutter/constants/app_constants.dart';
import 'package:navigation_flutter/widgets/hero_product_image.dart';
import 'package:navigation_flutter/widgets/product_name.dart';
import 'package:navigation_flutter/widgets/product_rating_section.dart';
import 'package:navigation_flutter/widgets/product_price_compact.dart';
import 'package:navigation_flutter/widgets/stock_card.dart';
import 'package:navigation_flutter/widgets/product_description.dart';
import 'package:navigation_flutter/widgets/footer_widget.dart';

/// Halaman detail produk
/// Menampilkan informasi lengkap produk termasuk gambar, nama, harga, stock, dan deskripsi
class ItemPage extends StatelessWidget {
  final Item item;

  const ItemPage({super.key, required this.item});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: _buildAppBar(),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HeroProductImage(item: item),
                  _buildProductDetails(item),
                ],
              ),
            ),
          ),
          const FooterWidget(),
        ],
      ),
    );
  }

  /// AppBar dengan gradient background dan back button eksplisit
  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      title: const Text(
        'Product Detail',
        style: AppConstants.appBarTitleStyle,
      ),
      backgroundColor: Colors.blue,
      iconTheme: const IconThemeData(color: Colors.white),
      leading: Builder(
        builder: (context) => IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => context.go('/'),
          tooltip: 'Back to Home',
        ),
      ),
      elevation: 0,
      flexibleSpace: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue[600]!, Colors.blue[800]!],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
      ),
    );
  }

  /// Section detail produk
  Widget _buildProductDetails(Item item) {
    return Padding(
      padding: const EdgeInsets.all(AppConstants.paddingLarge),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildHeaderSection(item),
          const SizedBox(height: AppConstants.paddingLarge),
          StockCard(stock: item.stock),
          const SizedBox(height: AppConstants.spacingXXLarge),
          const ProductDescription(),
        ],
      ),
    );
  }

  /// Header section dengan nama, rating, dan price
  Widget _buildHeaderSection(Item item) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ProductName(name: item.name, isLarge: true),
              const SizedBox(height: AppConstants.spacingLarge),
              ProductRatingSection(rating: item.rating),
            ],
          ),
        ),
        const SizedBox(width: AppConstants.spacingXLarge),
        ProductPriceCompact(price: item.price),
      ],
    );
  }
}
