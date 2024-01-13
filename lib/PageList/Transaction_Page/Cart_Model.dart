import 'package:http/http.dart' as http;

class TransactionCart{
  final String id;
  final int qty;
  final int amount;

  TransactionCart({
    required this.id,
    required this.qty,
    required this.amount
  });

  factory TransactionCart.fromJson(Map<String, dynamic> json){
    return TransactionCart(
        id: json['productId'],
        qty: json['quantity'],
        amount: json['price'],
    );
  }
}