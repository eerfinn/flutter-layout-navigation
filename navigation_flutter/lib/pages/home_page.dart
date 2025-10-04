import 'package:flutter/material.dart';
import 'package:navigation_flutter/models/item.dart';
import 'package:navigation_flutter/constants/app_constants.dart';
import 'package:navigation_flutter/widgets/product_card.dart';
import 'package:navigation_flutter/widgets/footer_widget.dart';

/// Halaman utama yang menampilkan daftar produk dalam bentuk grid
class HomePage extends StatelessWidget {
  HomePage({super.key});

  /// Daftar produk yang tersedia
  final List<Item> items = [
    Item(
      name: 'Sugar',
      price: 5000,
      image: 'assets/images/sugar.jpg',
      stock: 50,
      rating: 4.5,
    ),
    Item(
      name: 'Salt',
      price: 2000,
      image: 'assets/images/salt.jpg',
      stock: 100,
      rating: 4.8,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: Column(
        children: [
          Expanded(child: _buildProductGrid()),
          const FooterWidget(),
        ],
      ),
    );
  }

  /// AppBar dengan title Shopping List
  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      title: const Text(
        'Shopping List',
        style: AppConstants.appBarTitleStyle,
      ),
      backgroundColor: Colors.blue,
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

  /// Grid view untuk menampilkan produk
  Widget _buildProductGrid() {
    return Container(
      padding: const EdgeInsets.all(AppConstants.paddingMedium),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: AppConstants.gridCrossAxisCount,
          crossAxisSpacing: AppConstants.gridCrossAxisSpacing,
          mainAxisSpacing: AppConstants.gridMainAxisSpacing,
          childAspectRatio: AppConstants.gridChildAspectRatio,
        ),
        itemCount: items.length,
        itemBuilder: (context, index) => ProductCard(item: items[index]),
      ),
    );
  }
}
