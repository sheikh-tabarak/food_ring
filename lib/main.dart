import 'package:flutter/material.dart';
import 'package:food_ring/Screens/accounts/Login.dart';
import 'package:food_ring/Screens/home/HomePage.dart';
import 'package:food_ring/Screens/resturants/Resturants.dart';
import 'package:get/get.dart';

import 'Screens/products/ScrollableProductDetailPage.dart';
import 'Screens/resturants/resturantDetailPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,

      //  home:ScrollableProductDetailPage(),
      //  home:ReviewWidget(),
      //  home:ProductDetailPage(),
      // home:Login(),
      home:  HomePage(userindex: 0),
      //  home: ResturantDetailPage(),
     // home: Resturants(),
    );
  }
}
