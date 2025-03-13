import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_app/bloc/cart/cart_bloc.dart';
import 'package:task_app/bloc/cart/cart_event.dart';
import 'package:task_app/bloc/cart/cart_state.dart';
import 'package:task_app/models/product_model.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Shopping Cart')),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: BlocBuilder<CartBloc, CartState>(
          builder: (context, state) {
            if (state is CartUpdated && state.cartItems.isNotEmpty) {
              return ListView.builder(
                itemCount: state.cartItems.length,
                itemBuilder: (context, index) {
                  final product = state.cartItems[index];
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey),
                      ),
                      child: ListTile(
                        leading: Image.network(
                          product.imageUrl,
                          width: 50,
                          height: 50,
                          fit: BoxFit.cover,
                        ),
                        title: Text(product.name),
                        subtitle: Text('\$${product.price}'),
                        trailing: IconButton(
                          icon: Icon(Icons.delete, color: Colors.red),
                          onPressed: () {
                            context.read<CartBloc>().add(RemoveFromCart(product));
                          },
                        ),
                      ),
                    ),
                  );
                },
              );
            } else {
              return const Center(
                child: Text(
                  'Your cart is empty',
                  style: TextStyle(fontSize: 18),
                ),
              );
            }
          },
        ),
      ),
    );
  }
}

