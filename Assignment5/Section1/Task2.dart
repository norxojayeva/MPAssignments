import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, 
      title: 'Product Card Demo',
      home: Scaffold(
        appBar: AppBar(title: const Text("Products Available in Sale")),
        body: ListView(
          children: const [
            ProductCard(productName: "Book Holder", price: 15.32),
            ProductCard(productName: "Table Lamp", price: 9.50),
          ],
        ),
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final String productName;
  final double price;

  const ProductCard({
    super.key,
    required this.productName,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color:Colors.yellowAccent,
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 50),
      child: ListTile(
        title: Text(
          productName,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        subtitle: Text(
          "\$${price.toStringAsFixed(3)}",
          style: const TextStyle(color: Colors.green, fontSize: 16),
        ),
      ),
    );
  }
}
