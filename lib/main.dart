import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_app/bloc/bootom_nav_cubit.dart';
import 'package:task_app/bloc/cart/cart_bloc.dart';
import 'package:task_app/bloc/product_bloc.dart';
import 'package:task_app/bloc/product_event.dart';
import 'package:task_app/screens/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => BottomNavCubit()),
        BlocProvider(create: (context) => ProductBloc()..add(LoadProducts())),
        BlocProvider(create: (context) => CartBloc()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Home(),
      ),
    );
  }
}
