// ignore_for_file: file_names, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:food_ring/Screens/home/HomePage.dart';
import 'package:food_ring/configurations/AppColors.dart';
import 'package:food_ring/configurations/Dimensions.dart';
import 'package:food_ring/widgets/general/BigText.dart';

import '../../widgets/general/AppIcon.dart';
import '../../widgets/general/ExpandableText.dart';
import '../../widgets/resturants/ProductTitleSection.dart';


class ProductDetailPage extends StatelessWidget {
  const ProductDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        // Image
        Positioned(
          left: 0,
          right: 0,
          child: Container(
            width: double.maxFinite,
            // width: 500,
            height: Dimensions.ProductDetailImage,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/image/foodhome4.jpg"))),
          ),
        ),
        //  Cart and Back Icons
        Positioned(
            top: Dimensions.height40,
            left: Dimensions.width30,
            right: Dimensions.width30,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  // When the child is tapped, show a snackbar.
                  onTap: () {
                    const snackBar =
                        SnackBar(content: Text('Returned to Home'));
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const HomePage(userindex: 0,)),
                    );
                  },
                  child: const AppIcon(
                    icon: Icons.arrow_back_ios,
                  ),
                ),
                const AppIcon(icon: Icons.shopping_cart),
              ],
            )),
        // Content Area for Product Title, Description and reviews

        Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          top: Dimensions.ProductDetailImage - 20,
          child: Container(
            padding: EdgeInsets.only(
                left: Dimensions.width20,
                right: Dimensions.width20,
                top: Dimensions.height20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(Dimensions.radius20),
                topLeft: Radius.circular(Dimensions.radius20),
              ),
              color: const Color.fromARGB(255, 255, 255, 255),
            ),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const ProductTitleSection(
                text: 'Vegetable Salad',
                NoofReviews: 1,
                OverallRating: 4.9,
                Price: 200,
              ),
              SizedBox(height: Dimensions.height15),
              Container(
                height: 270,
                child: DefaultTabController(
                  length: 2,
                  initialIndex: 0,
                  child: Column(
                    children: [
                      TabBar(
                        labelColor: const Color.fromARGB(255, 247, 0, 0),
                        indicatorColor: AppColors.mainColor,
                        unselectedLabelColor: Colors.black,
                        labelPadding: const EdgeInsets.all(0),
                        unselectedLabelStyle: const TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w400),
                        labelStyle: TextStyle(
                            fontSize: 15,
                            color: AppColors.mainColor,
                            fontWeight: FontWeight.w700),
                        tabs: const [
                          Tab(
                            //    icon: Icon(Icons.info_outline_rounded),
                            text: "About",
                            //     child: SmallText(text: 'About',size: Dimensions.font15,color: AppColors.mainColor,)
                          ),
                          Tab(
                            //     icon: Icon(Icons.reviews),
                            text: "Reviews",
                            //   child: SmallText(text: 'Reviews',size: Dimensions.font15,color: AppColors.mainColor,)
                          ),
                        ],
                      ),
                      Expanded(
                        child: TabBarView(
                          // <-- Your TabBarView
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: Dimensions.height20),
                                BigText(text: "Description"),
                                SizedBox(height: Dimensions.height20),
                                const Expanded(
                                  child: SingleChildScrollView(
                                      child: ExpandableText(
                                    text:
                                        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
                                  )),
                                )
                              ],
                            ),
                            const Text('This is Review Side')
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ]),
          ),
        ),
      ]),

// Bottom Bar for buttons and Quantity Box

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
