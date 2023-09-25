import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../classes/DummyData.dart';
import '../../configurations/AppColors.dart';
import '../../configurations/Dimensions.dart';

class Resturants extends StatelessWidget {
  const Resturants({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack
      (
        children: [
Container(
            height: Dimensions.PageViewContainer,
            margin: const EdgeInsets.all(0),
    
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: AppColors.mainColor,
              image: DecorationImage(
                  image: NetworkImage(ProductsData[0].pimageUrl),
                  fit: BoxFit.cover
                  ),
              // To use the Image from the Assets : 
              // => AssetImage("assets/image/foodhome2.jpg"))),
            ),
          ),

        ],
         
        
       )
      );
  }
}