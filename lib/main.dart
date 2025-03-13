import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'bindings/product_binding.dart';
import 'views/home_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding: ProductBinding(), // Load ProductController
      home: HomeView(),
    );
  }
}
