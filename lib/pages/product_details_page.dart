import 'package:flutter/material.dart';
import 'package:gada_electronics/providers/cart_provider.dart';
import 'package:provider/provider.dart';

class ProductDetailsPage extends StatefulWidget {
  final Map<String, Object> product;

  const ProductDetailsPage({
    super.key,
    required this.product,
  });

  @override
  State<ProductDetailsPage> createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  void onTap() {
    Provider.of<CartProvider>(context, listen: false)
        .addProduct(widget.product);
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text("Product added Successfully!"),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Details"),
      ),
      body: Column(
        children: [
          Text(
            widget.product['title'] as String,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const Spacer(),
          Image.asset(
            widget.product['imageUrl'] as String,
            height: 250,
          ),
          const Spacer(
            flex: 2,
          ),
          Container(
            height: 250,
            width: double.infinity,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(245, 247, 249, 1),
              borderRadius: BorderRadius.circular(40),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "${widget.product["price"]}₹",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: ElevatedButton.icon(
                    onPressed: onTap,
                    icon: const Icon(
                      Icons.shopping_cart_outlined,
                      color: Colors.black,
                    ),
                    label: const Text(
                      "Add to Cart",
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Theme.of(context).colorScheme.primary,
                      fixedSize: const Size(350, 50),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
