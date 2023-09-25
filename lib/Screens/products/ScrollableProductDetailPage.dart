// ignore_for_file: file_names, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_sticky_header/flutter_sticky_header.dart';
import 'package:food_ring/classes/Products.dart';
import 'package:food_ring/configurations/AppColors.dart';
import 'package:food_ring/configurations/Dimensions.dart';
import 'package:food_ring/widgets/general/AppIcon.dart';
import 'package:food_ring/widgets/general/BigText.dart';
import 'package:food_ring/widgets/general/SmallText.dart';

import '../../classes/DummyData.dart';
import '../../widgets/resturants/ProductTitleSection.dart';
import '../../widgets/general/ReviewWidget.dart';

class ScrollableProductDetailPage extends StatelessWidget {

final int index;
//List<int> MyReviewId=[];
//List MyReviewId;
//var tempDataList = List();
var ProductReviews = [];


   ScrollableProductDetailPage({super.key, this.index =0});


  @override
  Widget build(BuildContext context) {
 
                        //  late List<int> ReviewId;
                          int listindex=0;
                            for(int i=0;i<ReviewsData.length;i++){
                              if(ReviewsData[i].ProductId==ProductsData[index].pId){
                                ProductReviews.add(i);
                               } }
    return Scaffold(
      backgroundColor: Colors.white,

      body: Padding(
        padding: EdgeInsets.all(Dimensions.height5),
        child: DefaultTabController(
          length: 2,
          initialIndex: 0,
          child: CustomScrollView(slivers: [
            SliverAppBar(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                //  AppIcon(icon: Icons.clear),
                  AppIcon(icon: Icons.shopping_cart)
                ],
              ),
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(Dimensions.height10 * 12),
                child: Container(
                    // margin: EdgeInsets.only(top: 50),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          //BorderRadius.circular(Dimensions.radius20),
                          BorderRadius.only(
                              topLeft: Radius.circular(Dimensions.radius20),
                              topRight: Radius.circular(Dimensions.radius20)),
                    ),
                    //     padding: EdgeInsets.only(top:Dimensions.height10,bottom: Dimensions.height15),
                    width: double.maxFinite,
                    child: Center(
                      child: Container(
                        padding: EdgeInsets.all(Dimensions.height15),
                        child: ProductTitleSection(
                          text: ProductsData[index].pName,
                          NoofReviews: ReviewCount(ProductsData[index].pId),
                          OverallRating: Calculate_OverallRating(ProductsData[index].pId),
                          Price: ProductsData[index].pRegularPrice,
                        ),
                      ),
                    )),
              ),
              pinned: true,
              backgroundColor: AppColors.mainColor,
              expandedHeight: 300,
              flexibleSpace: FlexibleSpaceBar(
                
                background: Image.network(ProductsData[index].pimageUrl)   
                // Image.asset(
                //   'assets/image/foodhome2.jpg',
                //   width: double.maxFinite,
                //   fit: BoxFit.cover,
                // ),
              ),
            ),

            SliverStickyHeader(
              header: Column(
                children: [
                  Container(
                    
                    height: Dimensions.height10 * 6,
                    color: Colors.white,
                    child: TabBar(
                        labelColor: AppColors.mainColor,
                        indicatorColor: AppColors.mainColor,
                        unselectedLabelColor: Colors.black,
                        labelPadding: const EdgeInsets.all(0),
                        unselectedLabelStyle: const TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w400),
                        labelStyle: TextStyle(
                            fontSize: 15,
                            color: AppColors.mainColor,
                            fontWeight: FontWeight.w700),
                        tabs:  [
                          Tab(
                            //    icon: Icon(Icons.info_outline_rounded),
                            text: 'About',
                            //     child: SmallText(text: 'About',size: Dimensions.font15,color: AppColors.mainColor,)
                          ),
                          Tab(
                            //     icon: Icon(Icons.reviews),
                           text: 'Reviews ( ${ReviewCount(ProductsData[index].pId).toString().toString()} )',
                              // child:
                           //    text:SmallText(text: 'tex',size: Dimensions.font15,color: AppColors.mainColor,),
                          ),
                        ]),
                  ),
                ],
              ),
              sliver: SliverFillRemaining(
                child: Container(
                  height: double.maxFinite,
                  child: TabBarView(
                    children: [
                      SingleChildScrollView(
                        physics: const NeverScrollableScrollPhysics(),
                        child: Container(
                          padding: EdgeInsets.only(
                              left: Dimensions.width10,
                              right: Dimensions.width10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: Dimensions.height20),
                              SmallText(
                                text: ProductsData[index].pDescription,
                                // text:
                                //     'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like). Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like). Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).',
                              
                                size: 15,
                              ),
                              // const ExpandableText(
                              //     text:
                              //         'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like). Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like). Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).',
                              //         ),
                            ],
                          ),
                        ),
                      ),
                      ListView.builder(
                        
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: ReviewCount(ProductsData[index].pId),
                          itemBuilder: (context, thisindex) {
                         print('This is the number MyReviewId[thisindex] => $thisindex');
                         print('Review Number is ${ProductReviews[thisindex]}');
                          print('Review Name is ${ReviewsData[ProductReviews[thisindex]].Name}');


                            return ReviewWidget(
                              
                              Name: ReviewsData[ProductReviews[thisindex]].Name,
                              Review: ReviewsData[ProductReviews[thisindex]].Review,
                              stars: ReviewsData[ProductReviews[thisindex]].Stars,
                              TimeStamp: ReviewsData[ProductReviews[thisindex]].TimeStamp,
                            );
                          }),
                    ],
                  ),
                ),
              ),
            ),
          ]),
        ),
      ),

      // Navigation Same as the Product Detail Page
      bottomNavigationBar: Container(
        height: 100,
        padding: EdgeInsets.only(
            top: Dimensions.height20,
            bottom: Dimensions.height20,
            right: Dimensions.width20,
            left: Dimensions.width20),
        decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                color: Color.fromARGB(255, 215, 215, 215),
                blurRadius: 5,
                offset: Offset(0, 0),
              ),
            ],
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(Dimensions.radius20),
              topRight: Radius.circular(Dimensions.radius20),
            )),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // First Child - Quantity Box for Product | Parent : Bottom Bar Producvty Details
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(Dimensions.width10),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 237, 237, 237),
                borderRadius: BorderRadius.circular(Dimensions.radius20),
              ),
              child: Row(
                children: [
                  // Minus Button to decrease quanity of product you are going to add to the cart
                  Container(
                      padding: const EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        color: AppColors.mainColor,
                        borderRadius:
                            BorderRadius.circular(Dimensions.radius20),
                      ),
                      child: Icon(
                        Icons.remove,
                        color: Colors.white,
                        size: Dimensions.font20,
                      )),
                  SizedBox(width: Dimensions.width15),
                  // Qantity of product you are going to add to the cart
                  BigText(text: '1'),
                  SizedBox(width: Dimensions.width15),
                  // Plus Button to Increase quanity of product you are going to add to the cart
                  Container(
                      padding: const EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        color: AppColors.mainColor,
                        borderRadius:
                            BorderRadius.circular(Dimensions.radius20),
                      ),
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                        size: Dimensions.font20,
                      ))
                ],
              ),
            ),

            SizedBox(width: Dimensions.width20),

// Add to Cart Button
            Expanded(
              child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(Dimensions.width10),
                decoration: BoxDecoration(
                  color: AppColors.mainColor,
                  borderRadius: BorderRadius.circular(Dimensions.radius20),
                ),
                child: BigText(
                  text: '\$150 - Add to Cart',
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
