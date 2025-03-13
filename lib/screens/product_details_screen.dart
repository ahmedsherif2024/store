import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:task_app/bloc/cart/cart_bloc.dart';
import 'package:task_app/bloc/cart/cart_event.dart';
import 'package:task_app/models/product_model.dart';
import 'package:task_app/widget/app_images.dart';
import 'package:task_app/widget/custom_page_product.dart';
import 'package:task_app/widget/custom_product_container.dart';

class ProductDetailsScreen extends StatelessWidget {
  final Product product;

  const ProductDetailsScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.name),
        actions: [
          Icon(Icons.cloud_upload_outlined),
          const SizedBox(width: 8,),
          Icon(Icons.favorite),
          const SizedBox(width: 10,),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const PageProduct(),
                const SizedBox(height: 40),
                ProductContainer(),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  product.name,
                  style: const TextStyle(
                      fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                Text(
                  "\$${product.price}",
                  style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.green),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    const Icon(Icons.star, color: Colors.orange),
                    Text(" ${product.rating}",
                        style: const TextStyle(fontSize: 18)),
                  ],
                ),
                const SizedBox(height: 15),
                Text(
                  product.descreption,
                  style: const TextStyle(fontSize: 16, color: Colors.grey),
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Text(
                      "\$${product.price}",
                      style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.green),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Center(
                      child: ElevatedButton.icon(
                        onPressed: () {
                          context.read<CartBloc>().add(AddToCart(product));
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text("${product.name} added to cart"),
                              duration: const Duration(seconds: 2),
                            ),
                          );

                        },
                        icon: const Icon(Icons.shopping_cart),
                        label: const Text("Add to Cart"),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          foregroundColor: Colors.white,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 30, vertical: 15),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}





