import 'package:task_app/models/product_model.dart';

abstract class ProductState {}

class ProductInitial extends ProductState{}

class ProductLoading extends ProductState{}

class ProductLoaded extends ProductState
{
  final List<Product> products;

  ProductLoaded(this.products);
}
class ProductError extends ProductState{}
class ChangeBottomNavStates extends ProductState{}