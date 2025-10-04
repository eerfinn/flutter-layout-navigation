/// Utility class untuk formatting harga
class PriceFormatter {
  /// Format harga menjadi format Rupiah dengan pemisah titik
  /// 
  /// Contoh: 5000 -> "5.000", 1000000 -> "1.000.000"
  static String format(int price) {
    return price.toString().replaceAllMapped(
      RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'),
      (Match m) => '${m[1]}.',
    );
  }

  /// Format harga dengan prefix "Rp"
  /// 
  /// Contoh: 5000 -> "Rp 5.000"
  static String formatWithCurrency(int price) {
    return 'Rp ${format(price)}';
  }
}
