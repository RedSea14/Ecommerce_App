import 'package:appecommerce/models/category_model.dart';
import 'package:appecommerce/repositories/category_repo.dart';
import 'package:flutter/material.dart';

class CategoryProvider extends ChangeNotifier {
  List<CategoryModel> listCategory = [];
  Future<void> getListCategory() async {
    List<CategoryModel> data = await CategoryRepo().getListCategoryRepo();
    listCategory = data;
    notifyListeners();
  }
}
