import 'package:appecommerce/pages/home/widgets/home_category.dart';
import 'package:appecommerce/pages/home/widgets/home_header.dart';
import 'package:appecommerce/pages/home/widgets/home_list_product.dart';
import 'package:appecommerce/pages/home/widgets/home_slider.dart';
import 'package:appecommerce/pages/widgets/fake_search_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Column(
            children: [
              HomeHeader(),
              SizedBox(
                height: 15,
              ),
              FakeSearchWidget(),
              HomeSlider(),
              HomeCategories(),
              SizedBox(
                height: 8,
              ),
              HomeListProduct(),
            ],
          ),
        ),
      ),
    );
  }
}
