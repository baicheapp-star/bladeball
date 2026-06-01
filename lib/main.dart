import 'package:bladeball/pages/home_page.dart';
import 'package:bladeball/pages/login_page.dart';
import 'package:bladeball/pages/shop_page.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
    PointerDeviceKind.touch,
    PointerDeviceKind.mouse,
    PointerDeviceKind.trackpad,
  };
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
      scrollBehavior: MyCustomScrollBehavior(),
      routes: {
        'homepage':(context)=>HomePage(),
        'loginpage': (context) => LoginPage(),
        'shoppage': (context) => ShopPage(),
      },
    );
  }
}
