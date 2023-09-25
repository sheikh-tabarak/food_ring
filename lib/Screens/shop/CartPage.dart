// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:food_ring/widgets/general/BigText.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top:50),
child: Column(
  
  mainAxisAlignment: MainAxisAlignment.center,
  crossAxisAlignment: CrossAxisAlignment.center,
  children: [
     const Icon(Icons.shopping_cart, color: Color.fromARGB(255, 187, 187, 187),size: 200,),
     BigText(text: 'Your Cart is Empty')
  ],
),

    );
  }
}