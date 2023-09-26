import 'package:appecommerce/pages/auth/login.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroSrceen extends StatelessWidget {
  const IntroSrceen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        pages: [
          PageViewModel(
            decoration: const PageDecoration(),
            image: Image.asset('assets/images/logo.jpg'),
            title: 'Intro 1',
            body:
                'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words',
          ),
          PageViewModel(
            decoration: const PageDecoration(),
            image: Image.asset('assets/images/logo.jpg'),
            title: 'Intro 2',
            body:
                'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words',
          ),
          PageViewModel(
            decoration: const PageDecoration(),
            image: Image.asset('assets/images/logo.jpg'),
            title: 'Intro 3',
            body:
                'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words',
          ),
        ],
        showNextButton: true,
        showDoneButton: true,
        showSkipButton: true,
        skip: const Text('Skip'),
        next: const Text('Next'),
        done: const Text("Let's Go"),
        onDone: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const LoginScreen(),
              ));
        },
        dotsDecorator: DotsDecorator(
          size: const Size(10, 10),
          activeSize: const Size(20, 20),
          activeColor: Colors.blue,
          activeShape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        ),
      ),
    );
  }
}
