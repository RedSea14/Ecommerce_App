import 'dart:convert';

import 'package:appecommerce/models/category_model.dart';
import 'package:appecommerce/models/slider_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class CategoryRepo {
  Future<List<CategoryModel>> getListCategoryRepo() async {
    const url = 'http://apiforlearning.zendvn.com/api/mobile/categories';
    final response = await http.get(Uri.parse(url));
    final data = jsonDecode(response.body);
    List<CategoryModel> listdata = List<CategoryModel>.from(
        data.map((e) => CategoryModel.fromJson(jsonEncode(e))).toList());
    return listdata;
  }
}
