import 'package:appecommerce/pages/home/home.dart';
import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class CustomeHomeScreen extends StatefulWidget {
  const CustomeHomeScreen({super.key});

  @override
  State<CustomeHomeScreen> createState() => _CustomeHomeScreenState();
}

class _CustomeHomeScreenState extends State<CustomeHomeScreen> {
  int _selectIndex = 0;
  final List<Widget> _tabs = [
    const HomeScreen(),
    const Center(
      child: Text('2'),
    ),
    const Center(
      child: Text('3'),
    ),
    const Center(
      child: Text('4'),
    ),
    const Center(
      child: Text('5'),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _tabs[_selectIndex],
      bottomNavigationBar: SalomonBottomBar(
        currentIndex: _selectIndex,
        selectedItemColor: const Color.fromARGB(255, 61, 49, 11),
        backgroundColor: Colors.white,
        unselectedItemColor: Colors.black,
        items: [
          SalomonBottomBarItem(
            icon: const Icon(Icons.home),
            title: const Text('Home'),
            selectedColor: Colors.purple,
          ),
          SalomonBottomBarItem(
            icon: const Icon(Icons.search),
            title: const Text('Category'),
            selectedColor: Colors.pink,
          ),
          SalomonBottomBarItem(
            icon: const Icon(Icons.shop),
            title: const Text('Stores'),
            selectedColor: Colors.orange,
          ),
          SalomonBottomBarItem(
            icon: const Icon(Icons.shopping_cart),
            title: const Text('Cart'),
            selectedColor: Colors.teal,
          ),
          SalomonBottomBarItem(
            icon: const Icon(Icons.person),
            title: const Text('Profile'),
            selectedColor: Colors.blue,
          ),
        ],
        onTap: (value) {
          setState(() {
            _selectIndex = value;
          });
        },
      ),
    );
  }
}
