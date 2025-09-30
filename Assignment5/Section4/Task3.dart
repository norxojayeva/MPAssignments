import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ShoppingCartApp(),
    );
  }
}

class ShoppingCartApp extends StatefulWidget {
  const ShoppingCartApp({super.key});

  @override
  State<ShoppingCartApp> createState() => _ShoppingCartAppState();
}

class _ShoppingCartAppState extends State<ShoppingCartApp> {
  final List<String> _cart = [];

  void _addToCart(String product) {
    setState(() {
      _cart.add(product);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Shopping Cart Simulation")),
      body: Row(
        children: [
          Expanded(
            child: ProductList(onAddToCart: _addToCart),
          ),
          const VerticalDivider(),
          Expanded(
            child: CartView(cartItems: _cart),
          ),
        ],
      ),
    );
  }
}

class ProductList extends StatelessWidget {
  final Function(String) onAddToCart;

  const ProductList({super.key, required this.onAddToCart});

  @override
  Widget build(BuildContext context) {
    final products = ["Bookmark", "BookHolder", "TableLamp"];

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text("Products",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: products.length,
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  title: Text(products[index]),
                  trailing: ElevatedButton(
                    onPressed: () => onAddToCart(products[index]),
                    child: const Text("Add"),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

class CartView extends StatelessWidget {
  final List<String> cartItems;

  const CartView({super.key, required this.cartItems});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text("Cart",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        ),
        Expanded(
          child: ListView.builder(
                  itemCount: cartItems.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(cartItems[index]),
                    );
                  },
                ),
        ),
      ],
    );
  }
}
