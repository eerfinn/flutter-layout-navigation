/// Utility class untuk formatting harga
class PriceFormatter {
  /// Format harga menjadi format Rupiah dengan pemisah titik
  static String format(int price) {
    return price.toString().replaceAllMapped(
      RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'),
      (Match m) => '${m[1]}.',
    );
  }

  /// Format harga dengan prefix "Rp"
  static String formatWithCurrency(int price) {
    return 'Rp ${format(price)}';
  }
}
