import 'dart:async';
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<Transactions> fetchAlbum() async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  final String? userId = prefs.getString('id');
  final response = await http.get(
      Uri.parse('https://store-api.cukurukuk.cloud/v1/$userId/orders/history'));

  if (response.statusCode == 200) {
    final List<dynamic> jsonList = jsonDecode(response.body) as List<dynamic>;
    final List<Order> orders =
        jsonList.map((json) => Order.fromJson(json)).toList();
    return Transactions(orders: orders);
    // If the server did return a 200 OK response,
    // then parse the JSON.
    // return Transactions.fromJson(jsonDecode(response.body) as List<dynamic>);
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}

class OrderItem {
  final String productId;
  final int quantity;
  final int price;

  const OrderItem(
      {required this.productId, required this.quantity, required this.price});
}

class Order {
  final String id;
  final String updatedAt;
  // final List<OrderItem> items;
  final List<dynamic> items;

  const Order({
    required this.id,
    required this.updatedAt,
    required this.items,
  });

  factory Order.fromJson(Map<String, dynamic> json) {
    return Order(
        id: json['id'] as String,
        updatedAt: json['updatedAt'] as String,
        items: json['items']);
  }
}

class Transactions {
  final List<Order> orders;

  const Transactions({
    required this.orders,
  });

  factory Transactions.fromJson(List<dynamic> json) {
    return Transactions(
      orders: json as List<Order>,
    );
  }
}

class TransactionsScreen extends StatefulWidget {
  const TransactionsScreen({super.key});

  @override
  State<TransactionsScreen> createState() => _MyAppState();
}

class _MyAppState extends State<TransactionsScreen> {
  late Future<Transactions> futureAlbum;

  @override
  void initState() {
    super.initState();
    futureAlbum = fetchAlbum();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fetch Data Example',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Fetch Data Example'),
        ),
        body: FutureBuilder<Transactions>(
          future: futureAlbum,
          builder: (context, snapshot) {
            if (snapshot.hasData && snapshot.data!.orders.isNotEmpty) {
              return ListView.separated(
                  itemBuilder: (context, index) {
                    return Column(
                        children: snapshot.data!.orders[index].items
                            .map(
                              (orderItem) => Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      Text(orderItem['productId']),
                                      Row(
                                        children: [
                                          Expanded(
                                              child: Text(
                                                  'x${orderItem['quantity'] as int}')),
                                          Text('Rp${orderItem['price'] as int}')
                                        ],
                                      )
                                    ],
                                  )),
                            )
                            .toList());
                  },
                  separatorBuilder: (context, index) =>
                      const Divider(height: 20),
                  itemCount: snapshot.data!.orders.length);
              // return Text(snapshot.data!.updatedAt);
            } else if (snapshot.hasError) {
              return Text('${snapshot.error}');
            }

            // By default, show a loading spinner.
            return const CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
