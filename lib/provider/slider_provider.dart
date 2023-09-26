import 'package:appecommerce/models/slider_model.dart';
import 'package:appecommerce/repositories/slider_repo.dart';
import 'package:flutter/material.dart';

class SliderProvider extends ChangeNotifier {
  List<SliderModel> listSlider = [];

  Future<void> getListSlider() async {
    List<SliderModel> data = await SliderRepo().getListSliderRepo();
    listSlider = data;
    notifyListeners();
  }
}
