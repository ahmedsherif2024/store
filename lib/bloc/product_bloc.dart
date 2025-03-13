import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_app/screens/home_screen.dart';
import '../models/product_model.dart';
import 'product_event.dart';
import 'product_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  ProductBloc() : super(ProductInitial()) {
    on<LoadProducts>(_onLoadProducts);
  }


  Future<void> _onLoadProducts(
      LoadProducts event, Emitter<ProductState> emit) async {
    emit(ProductLoading());

    try {
      const jsonData = '''
      [
        {"name": "Sana Sleep Mask", "price": 85, "imageUrl": "https://m.media-amazon.com/images/I/51Vd94cdbWL._AC_UL320_.jpg", "rating": 4.9, "description": "A smart sleep mask."},
        {"name": "Engineered Sound", "price": 78, "imageUrl": "https://m.media-amazon.com/images/I/51GB8b4fc8L._AC_UL320_.jpg", "rating": 4.5, "description": "High quality sound."},
        {"name": "Smart Speaker", "price": 120, "imageUrl": "https://m.media-amazon.com/images/I/716++4xC2wL._AC_SR146,118_QL70_.jpg", "rating": 4.8, "description": "A voice-controlled smart speaker."},
        {"name": "Wireless Charger", "price": 45, "imageUrl": "https://m.media-amazon.com/images/I/51fzi5Li2fL._AC_SR180,120_QL70_.jpg", "rating": 4.7, "description": "Fast wireless charger for all devices."},
        {"name": "Smart Light Bulb", "price": 25, "imageUrl": "https://m.media-amazon.com/images/I/21iwjk-zk7L._AC_UL320_.jpg", "rating": 4.6, "description": "Control your lights with your phone."},
        {"name": "Noise Cancelling Headphones", "price": 150, "imageUrl": "https://m.media-amazon.com/images/I/6146xl5Q0mL._AC_SR146,118_QL70_.jpg", "rating": 4.9, "description": "Block out all unwanted noise."}
      ]
      ''';

      final List<dynamic> data = json.decode(jsonData);
      final products = data.map((e) => Product.fromJson(e)).toList();

      emit(ProductLoaded(products));
    } catch (e) {
      print("Error loading products: $e");
      emit(ProductError());
    }
  }
}
