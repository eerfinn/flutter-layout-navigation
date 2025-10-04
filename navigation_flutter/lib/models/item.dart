/// Model untuk data produk
class Item {
  /// Nama produk
  final String name;
  
  /// Harga produk dalam Rupiah
  final int price;
  
  /// Path ke gambar produk di assets
  final String image;
  
  /// Jumlah stock yang tersedia
  final int stock;
  
  /// Rating produk (0.0 - 5.0)
  final double rating;

  Item({
    required this.name,
    required this.price,
    required this.image,
    required this.stock,
    required this.rating,
  });
}