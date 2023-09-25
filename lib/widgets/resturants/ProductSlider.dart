// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:food_ring/Screens/products/ScrollableProductDetailPage.dart';
import '../../configurations/AppColors.dart';
import '../../configurations/Dimensions.dart';
import 'ProductTitleSection.dart';
import '../../classes/DummyData.dart';
import '../../classes/Products.dart';

class ProductSlider extends StatelessWidget {
  final int index;
  const ProductSlider({super.key, this.index=0});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
onTap: () => {
  Navigator.push(context, MaterialPageRoute<void>(
      builder: (BuildContext context) => ScrollableProductDetailPage(index:index),
    ),)
},

      child: Stack(
        children: [
          Container(
            height: Dimensions.PageViewContainer,
            margin: const EdgeInsets.only(left: 5, right: 5),
    
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: AppColors.mainColor,
              image: DecorationImage(
                  image: NetworkImage(ProductsData[index].pimageUrl),
                  fit: BoxFit.cover
                  ),
              // To use the Image from the Assets : 
              // => AssetImage("assets/image/foodhome2.jpg"))),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: Dimensions.PageViewTextContainer,
              //    width: Dimensions.PageView,
    
              margin: EdgeInsets.only(
                  left: Dimensions.height30,
                  right: Dimensions.height30,
                  bottom: Dimensions.height10),
              padding: EdgeInsets.all(Dimensions.height15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                        color: Color.fromARGB(255, 192, 192, 192),
                        blurRadius: 5.0,
                        offset: Offset(0, 5))
                  ]),
              child: ProductTitleSection(
                text: ProductsData[index].pName,
                OverallRating: (Calculate_OverallRating(ProductsData[index].pId)),
                NoofReviews: ReviewCount(ProductsData[index].pId),
                Price: ProductsData[index].pSalePrice,
              ),
            ),
          )
        ],
      ),
    );
  }
}
