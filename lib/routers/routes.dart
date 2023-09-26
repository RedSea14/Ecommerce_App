import 'package:appecommerce/pages/categories/category.dart';
import 'package:appecommerce/pages/home/home.dart';
import 'package:appecommerce/routers/router_name.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class RouterCustom {
  static Route onGenerateRoute(RouteSettings settings) {
    var args = settings.arguments;
    switch (settings.name) {
      case RouterName.homePage:
        return PageTransition(
            child: const HomeScreen(), type: PageTransitionType.fade);
      case RouterName.categoryPage:
        return PageTransition(
            child: const CategoryScreen(), type: PageTransitionType.fade);
      default:
        __errorBuilder();
    }
    return __errorBuilder();
  }
}

Route __errorBuilder() {
  return MaterialPageRoute(builder: (context) {
    return Container();
  });
}
