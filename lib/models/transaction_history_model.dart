class TransactionHistoryModel
{
  final String title, date, amount;
  final bool isWithdrawal;

  TransactionHistoryModel({required this.title, required this.date, required this.amount, required this.isWithdrawal});
}