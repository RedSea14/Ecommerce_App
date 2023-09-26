import 'package:appecommerce/pages/search/search.dart';
import 'package:flutter/material.dart';

class FakeSearchWidget extends StatelessWidget {
  const FakeSearchWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const SearchScreen(),
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        height: 35,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          border: Border.all(color: Colors.black38, width: 1.5),
          color: Theme.of(context).colorScheme.primary,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Bạn muốn tìm gì?',
              style: TextStyle(
                color: Theme.of(context).colorScheme.secondary,
              ),
            ),
            Expanded(child: Container()),
            const Icon(
              Icons.search,
            ),
          ],
        ),
      ),
    );
  }
}
