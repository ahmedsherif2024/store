import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_app/bloc/cart/cart_event.dart';
import 'package:task_app/bloc/cart/cart_state.dart';
import 'package:task_app/models/product_model.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(CartInitial()) {
    on<AddToCart>((event, emit) {
      final updatedCart = state is CartUpdated
          ? List<Product>.from((state as CartUpdated).cartItems)
          : <Product>[];

      updatedCart.add(event.product);

      emit(CartUpdated(List<Product>.from(updatedCart)));
    });

    on<RemoveFromCart>((event, emit) {
      if (state is CartUpdated) {
        final updatedCart = List<Product>.from((state as CartUpdated).cartItems);
        if (updatedCart.contains(event.product)) {
          updatedCart.remove(event.product);
          emit(CartUpdated(List<Product>.from(updatedCart)));
        }
      }
    });
  }
}

