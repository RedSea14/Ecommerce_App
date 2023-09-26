import 'package:appecommerce/pages/widgets/mode_toggle_button.dart';
import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Good Morning'),
              const SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text(
                    'Louis A . ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                  Image.asset(
                    'assets/icon/hello.png',
                    width: 25,
                    height: 25,
                  ),
                ],
              ),
            ],
          ),
        ),
        const Expanded(flex: 1, child: ModeToggleButton()),
      ],
    );
  }
}
