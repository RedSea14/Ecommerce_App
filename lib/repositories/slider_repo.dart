import 'dart:convert';

import 'package:appecommerce/models/slider_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class SliderRepo {
  Future<List<SliderModel>> getListSliderRepo() async {
    const url = 'http://apiforlearning.zendvn.com/api/mobile/sliders';
    final response = await http.get(Uri.parse(url));
    final data = jsonDecode(response.body);
    List<SliderModel> listdata = List<SliderModel>.from(
        data.map((e) => SliderModel.fromJson(jsonEncode(e))).toList());
    return listdata;
  }
}
