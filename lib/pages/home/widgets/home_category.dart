import 'package:appecommerce/models/category_model.dart';
import 'package:appecommerce/pages/categories/category.dart';
import 'package:appecommerce/provider/category_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:transparent_image/transparent_image.dart';

class HomeCategories extends StatelessWidget {
  const HomeCategories({super.key});

  @override
  Widget build(BuildContext context) {
    List<CategoryModel> data = context.watch<CategoryProvider>().listCategory;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Categories',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.secondary,
              ),
            ),
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.keyboard_arrow_right_outlined)),
          ],
        ),
        SizedBox(
          height: 80,
          width: double.infinity,
          child: ListView.separated(
            separatorBuilder: (context, index) {
              return const SizedBox(
                width: 10,
              );
            },
            scrollDirection: Axis.horizontal,
            itemCount: data.length,
            itemBuilder: (context, index) {
              return AspectRatio(
                aspectRatio: 1,
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const CategoryScreen(),
                        ));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(20),
                      ),
                      boxShadow: [
                        BoxShadow(
                          offset: const Offset(0, 1),
                          color: Colors.grey.shade100,
                          blurRadius: 2,
                          spreadRadius: 1,
                        )
                      ],
                    ),
                    child: FadeInImage.memoryNetwork(
                      placeholder: kTransparentImage,
                      image: data[index].image,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
