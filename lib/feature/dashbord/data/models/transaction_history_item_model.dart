class TransactionHistoryItem {
  final String title, data, price;
  final bool isCashWithdrawal;

  const TransactionHistoryItem({
    required this.title,
    required this.data,
    required this.price,
    required this.isCashWithdrawal,
  });
}
