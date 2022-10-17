import 'package:ecommerce_app/models/product.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_app/ui/catalog/index.dart';
import 'package:ecommerce_app/ui/product_detail/index.dart';

void main() {
  runApp(const StoreApp());
}

class StoreApp extends StatelessWidget {
  const StoreApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Product product = Product(
      id: '2',
      name: 'Shoe',
      description: 'This is shoe',
      price: 150000,
      image: "assets/shoe2.png"
    );
    return MaterialApp(
      title: 'InThe Store',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: const CatalogPage(),
    );
  }
}