import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'package:shared_preferences/shared_preferences.dart';
import './Cart_Model.dart';
import 'package:input_quantity/input_quantity.dart';

Future<List<TransactionCart>> fetchData() async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  final String? userId = prefs.getString('id');
  var url = Uri.parse('https://store-api.cukurukuk.cloud/v1/$userId/orders');
  var response = await http.get(url);

  if (response.statusCode == 200) {
    List jsonResponse = json.decode(response.body);
    return jsonResponse.map((e) => TransactionCart.fromJson(e)).toList();
  } else {
    throw Exception('Data gagal di-load!');
  }
}

class TransactionPage extends StatefulWidget {
  const TransactionPage();

  @override
  State<TransactionPage> createState() => _TransactionPageState();
}

class _TransactionPageState extends State<TransactionPage> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<TransactionCart>>(
        future: fetchData(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Column(children: [
              Expanded(
                child: ListView.builder(
                    itemCount: snapshot.data!.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                          child: ListTile(
                        trailing: InputQty(
                          maxVal: double.maxFinite,
                          initVal: snapshot.data![index].qty,
                        ),
                        title: Text(snapshot.data![index].id),
                        subtitle: Text(snapshot.data![index].amount.toString()),
                        onTap: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //     builder: (context) => TransactionConfirm(),
                          //   ),
                          // );
                        },
                      ));
                    }),
              ),
              TextButton(
                  style:
                      TextButton.styleFrom(backgroundColor: Color(0xffF18265)),
                  onPressed: () {},
                  child: Text(
                    "Bayar",
                    style: TextStyle(color: Color(0xffffffff)),
                  )),
            ]);
          } else if (snapshot.hasError) {
            return Text(snapshot.error.toString());
          }
          return const CircularProgressIndicator();
        });
  }
}
