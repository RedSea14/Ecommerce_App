import 'package:appecommerce/models/slider_model.dart';
import 'package:appecommerce/provider/slider_provider.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeSlider extends StatelessWidget {
  const HomeSlider({super.key});

  @override
  Widget build(BuildContext context) {
    List<SliderModel> data = context.watch<SliderProvider>().listSlider;
    return CarouselSlider(
      options: CarouselOptions(
        height: 200,
        enlargeCenterPage: true,
        pauseAutoPlayOnManualNavigate: true,
        autoPlay: true,
        viewportFraction: 0.8,
        autoPlayInterval: const Duration(seconds: 10),
        autoPlayAnimationDuration: const Duration(milliseconds: 2000),
        autoPlayCurve: Curves.fastOutSlowIn,
      ),
      items: data
          .map(
            (data) => Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 30,
              ),
              child: Container(
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 10,
                      offset: Offset(2, 3),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(40),
                  image: DecorationImage(
                    image: NetworkImage(data.image),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          )
          .toList(),
    );
  }
}
