import 'package:flutter/material.dart';
import '../models/product_model.dart';

class ProductDetailScreen extends StatelessWidget {
  final Product product;

  const ProductDetailScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
  title: Text(
    product.title,
    style: const TextStyle(
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
  ),
  centerTitle: true,
  backgroundColor: Colors.deepPurple,
  elevation: 5,
  shadowColor: Colors.black,
  iconTheme: const IconThemeData(color: Colors.white),
),

      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(product.image),
            const SizedBox(height: 20),
            Text(product.title,
                style:
                    const TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Text(product.description),
            const SizedBox(height: 10),
            Text("\$${product.price}",
                style: const TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
