import 'package:appecommerce/pages/auth/welcome.dart';
import 'package:appecommerce/pages/home/home.dart';
import 'package:appecommerce/pages/main/customer_home.dart';
import 'package:appecommerce/pages/splash/splash.dart';
import 'package:appecommerce/provider/category_provider.dart';
import 'package:appecommerce/provider/slider_provider.dart';
import 'package:appecommerce/provider/theme_provider.dart';
import 'package:appecommerce/routers/routes.dart';
import 'package:appecommerce/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ThemeProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => SliderProvider()..getListSlider(),
        ),
        ChangeNotifierProvider(
          create: (context) => CategoryProvider()..getListCategory(),
        ),
      ],
      child: Consumer<ThemeProvider>(
        builder: (context, value, child) {
          return MaterialApp(
            themeMode: value.mode,
            theme: lightTheme,
            darkTheme: darkTheme,
            debugShowCheckedModeBanner: false,
            onGenerateRoute: RouterCustom.onGenerateRoute,
            home: const CustomeHomeScreen(),
          );
        },
      ),
    );
  }
}
