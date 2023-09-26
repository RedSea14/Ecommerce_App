import 'package:appecommerce/pages/categories/widget/category_body.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('IPHONE'),
        centerTitle: true,
      ),
      body: const CategodyBody(),
    );
  }
}
