// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:food_ring/Screens/products/ScrollableProductDetailPage.dart';
import 'package:food_ring/classes/DummyData.dart';
import 'package:food_ring/classes/Resturants.dart';
import 'package:food_ring/configurations/AppColors.dart';
import 'package:food_ring/configurations/Dimensions.dart';
import 'package:food_ring/widgets/general/BigText.dart';
import 'package:food_ring/widgets/general/SmallText.dart';

import '../../classes/Products.dart';

class PopularFood extends StatelessWidget {
  final int rid;
  final int count = 0;
  var ProductsFiltered = [];
  PopularFood({super.key, required this.rid});

  @override
  Widget build(BuildContext context) {
    int count = 0;

    for (int i = 0; i < ProductsData.length; i++) {
      if (ProductsData[i].rId == ResturantsData[rid].rId) {
        ProductsFiltered.add(i);
        count++;
      } else {}
    }

    print('Products Length : ${ProductsFiltered.length}');

    /// Productsof(ResturantsData[rid].rId);

    return SingleChildScrollView(
      physics: const NeverScrollableScrollPhysics(),
      child: Column(
        children: [
          Container(
            height: double.maxFinite,
            // margin: EdgeInsets.only(top: Dimensions.height10),
            //List of Products / resturants
            child: ListView.builder(
              //   physics: const NeverScrollableScrollPhysics(),
              // shrinkWrap: true,

              itemCount: ((ProductsFiltered.length) / 2).floor(),
//itemCount: 1,
              itemBuilder: (context, index) {
                //   print('Products Length : ${ProductsFiltered.length}');

                if (index == 0) {
                  index = 0;
                } else {
                  index = index + 1;
                }
                return Container(
                  margin: EdgeInsets.only(
                      top: Dimensions.width5, bottom: Dimensions.width5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Row(
                              //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                GestureDetector(
                                  onTap: () => {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                ScrollableProductDetailPage(
                                                    index: ProductsFiltered[
                                                        index])))
                                  },
                                  child: Stack(children: [
                                    Column(children: [
                                      Container(
                                        margin: EdgeInsets.only(
                                          left: Dimensions.width5,
                                          right: Dimensions.width5,
                                        ),
                                        width: Dimensions.screenWidth / 2.2,
                                        height: Dimensions.screenWidth / 2.2,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                              Dimensions.radius20),
                                          color: Colors.white38,
                                          image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: NetworkImage(ProductsData[
                                                    ProductsFiltered[index]]
                                                .pimageUrl),
                                          ),
                                        ),
                                      ),
                                    ]),
                                    Column(children: [
                                      Container(
                                          padding: EdgeInsets.all(
                                              Dimensions.width10),
                                          margin: EdgeInsets.only(
                                            left: Dimensions.width5,
                                            right: Dimensions.width5,
                                          ),
                                          width: Dimensions.screenWidth / 2.2,
                                          height: Dimensions.screenWidth / 2.2,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                                Dimensions.radius20),
                                            color: Color.fromARGB(48, 0, 0, 0),
                                          ),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                ProductsData[
                                                        ProductsFiltered[index]]
                                                    .pName,
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.w600),
                                              ),
                                              Container(
                                                  alignment: Alignment.center,
                                                  height: Dimensions.height40,
                                                  padding: EdgeInsets.all(
                                                      Dimensions.width10),
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            Dimensions
                                                                .radius20),
                                                  ),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Container(
                                                        child: SmallText(
                                                          text:
                                                              '\$ ${ProductsData[ProductsFiltered[index]].pRegularPrice.toString()}',
                                                          size:
                                                              Dimensions.font15,
                                                          color: AppColors
                                                              .mainColor,
                                                          weight:
                                                              FontWeight.w700,
                                                        ),
                                                      ),
                                                      Container(
                                                        child: Row(children: [
                                                          // SmallText(text: ' - ',),
                                                          Icon(Icons.star,
                                                              size: Dimensions
                                                                  .font12,
                                                              color: AppColors
                                                                  .mainColor),
                                                          SmallText(
                                                            text: (Calculate_OverallRating(
                                                                    ProductsData[ProductsFiltered[
                                                                            index]]
                                                                        .pId))
                                                                .toStringAsFixed(
                                                                    2),
                                                          ),
                                                        ]),
                                                      )
                                                    ],
                                                  ))
                                            ],
                                          )),
                                    ]),
                                  ]),
                                ),
                                GestureDetector(
                                  onTap: () => {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                ScrollableProductDetailPage(
                                                    index: ProductsFiltered[
                                                            index] +
                                                        1)))
                                  },
                                  child: Stack(children: [
                                    Column(children: [
                                      Container(
                                        margin: EdgeInsets.only(
                                          left: Dimensions.width5,
                                          right: Dimensions.width5,
                                        ),
                                        width: Dimensions.screenWidth / 2.2,
                                        height: Dimensions.screenWidth / 2.2,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                              Dimensions.radius20),
                                          color: Colors.white38,
                                          image: DecorationImage(
                                              fit: BoxFit.cover,
                                              image: NetworkImage(ProductsData[
                                                      ProductsFiltered[index] +
                                                          1]
                                                  .pimageUrl)),
                                        ),
                                      ),
                                    ]),
                                    Column(children: [
                                      Container(
                                          padding: EdgeInsets.all(
                                              Dimensions.width10),
                                          margin: EdgeInsets.only(
                                            left: Dimensions.width5,
                                            right: Dimensions.width5,
                                          ),
                                          width: Dimensions.screenWidth / 2.2,
                                          height: Dimensions.screenWidth / 2.2,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                                Dimensions.radius20),
                                            color: Color.fromARGB(48, 0, 0, 0),
                                          ),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                ProductsData[ProductsFiltered[
                                                            index] +
                                                        1]
                                                    .pName,
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.w600),
                                              ),
                                              Container(
                                                  alignment: Alignment.center,
                                                  height: Dimensions.height40,
                                                  padding: EdgeInsets.all(
                                                      Dimensions.width10),
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            Dimensions
                                                                .radius20),
                                                  ),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Container(
                                                        child: SmallText(
                                                          text:
                                                              '\$ ${ProductsData[ProductsFiltered[index] + 1].pRegularPrice.toString()}',
                                                          size:
                                                              Dimensions.font15,
                                                          color: AppColors
                                                              .mainColor,
                                                          weight:
                                                              FontWeight.w700,
                                                        ),
                                                      ),
                                                      Container(
                                                        child: Row(children: [
                                                          // SmallText(text: ' - ',),
                                                          Icon(Icons.star,
                                                              size: Dimensions
                                                                  .font12,
                                                              color: AppColors
                                                                  .mainColor),
                                                          SmallText(
                                                            text: Calculate_OverallRating(
                                                                    ProductsData[
                                                                            ProductsFiltered[index] +
                                                                                1]
                                                                        .pId)
                                                                .toStringAsFixed(
                                                                    2),
                                                          ),
                                                        ]),
                                                      )
                                                    ],
                                                  ))
                                            ],
                                          )),
                                    ]),
                                  ]),
                                ),
                              ]),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
