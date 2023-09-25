import 'package:flutter/material.dart';
import 'package:flutter_sticky_header/flutter_sticky_header.dart';
import 'package:food_ring/Screens/home/HomePage.dart';
import 'package:food_ring/classes/DummyData.dart';
import 'package:food_ring/configurations/AppColors.dart';
import 'package:food_ring/configurations/Dimensions.dart';
import 'package:get/get.dart';

import '../../widgets/general/AppIcon.dart';
import '../../widgets/general/BigText.dart';
import '../../widgets/resturants/PopularFood.dart';
import '../../widgets/resturants/ProductTitleSection.dart';
import '../../widgets/general/ReviewWidget.dart';
import '../../widgets/general/SmallText.dart';

class ResturantDetailPage extends StatelessWidget {
  final int resturantid;
  const ResturantDetailPage({super.key, required this.resturantid});

  @override
  Widget build(BuildContext context) {
    print('This is id : $resturantid');
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(0),
        child: DefaultTabController(
          length: 3,
          initialIndex: 0,
          child: CustomScrollView(slivers: [
            SliverAppBar(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () => {
              //          Navigator.pop(context)
                           Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => HomePage( userindex:0,)),
  )
                          },
                      icon: AppIcon(
                        icon: Icons.clear,
                      )),
                  AppIcon(icon: Icons.share)
                ],
              ),
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(Dimensions.height10 * 8),
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
                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  BigText(text:ResturantsData[resturantid].rtitle),
                                  SmallText(text: ResturantsData[resturantid].rdescription),
                                  SizedBox(height: Dimensions.height5),
                                  Row(
                                    children: [
                                      Icon(Icons.star,
                                          size: Dimensions.font15,
                                          color: AppColors.mainColor),
                                      Icon(Icons.star,
                                          size: Dimensions.font15,
                                          color: AppColors.mainColor),
                                      Icon(Icons.star,
                                          size: Dimensions.font15,
                                          color: AppColors.mainColor),
                                      Icon(Icons.star,
                                          size: Dimensions.font15,
                                          color: AppColors.mainColor),
                                      Icon(Icons.star_border_outlined,
                                          size: Dimensions.font15,
                                          color: AppColors.mainColor),
                                      SizedBox(width: Dimensions.width5),
                                      SmallText(text: '( 100 Reviews )')
                                    ],
                                  ),
                                ],
                              )
                            ],
                          )

                          // const ProductTitleSection(
                          //   text: 'Khizar Tikka',
                          //   NoofReviews: 1,
                          //   OverallRating: 4.9,
                          //   Price: 0,
                          // ),

                          ),
                    )),
              ),
              pinned: true,
              backgroundColor: AppColors.mainColor,
              expandedHeight: 300,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.network(
                  ResturantsData[resturantid].rimageUrl,
                  width: double.maxFinite,
                  fit: BoxFit.cover,
                ),
                // background: Image.asset(
                //       'assets/image/resturant1.jpg',

                // ),
              ),
            ),
            SliverStickyHeader(
              header: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(Dimensions.height5),
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
                        tabs: const [
                          Tab(
                            // icon: Icon(
                            //   Icons.sell,
                            //   size: 20
                            // ),
                            text: "Popular",
                            //     child: SmallText(text: 'About',size: Dimensions.font15,color: AppColors.mainColor,)
                          ),
                          Tab(
                            // icon: Icon(Icons.list, size: 20),
                            text: "Categories",
                            //   child: SmallText(text: 'Reviews',size: Dimensions.font15,color: AppColors.mainColor,)
                          ),
                          Tab(
                            // icon: Icon(Icons.reviews, size: 20),
                            text: "Reviews",
                            //   child: SmallText(text: 'Reviews',size: Dimensions.font15,color: AppColors.mainColor,)
                          ),
                        ]),
                  ),
                ],
              ),
              sliver: SliverFillRemaining(
                child: Container(
                  //     height: double.maxFinite,
                  child: TabBarView(
                    children: [
                      // SingleChildScrollView(
                      //   physics: const NeverScrollableScrollPhysics(),
                      //   child: Container(
                      //     padding: EdgeInsets.only(
                      //         left: Dimensions.width10,
                      //         right: Dimensions.width10),
                      //     child: Column(
                      //       crossAxisAlignment: CrossAxisAlignment.start,
                      //       children: [
                      //         SizedBox(height: Dimensions.height20),
                      //         SmallText(
                      //           text:
                      //               'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like). Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like). Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).',
                      //           size: 15,
                      //         ),
                      //         // const ExpandableText(
                      //         //     text:
                      //         //         'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like). Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like). Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).',
                      //         //         ),
                      //       ],
                      //     ),
                      //   ),
                      // ),
                      PopularFood(rid:resturantid),
                      
                      Center(
                          child: BigText(
                        text: 'This is Categories Section',
                      )),
                      ListView.builder(
                      //  Productsof(resturantid)
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: ReviewsData.length,
                          itemBuilder: (context, index) {
                            return ReviewWidget(
                              Name: ReviewsData[index].Name,
                              Review: ReviewsData[index].Review,
                              stars: ReviewsData[index].Stars,
                              TimeStamp: ReviewsData[index].TimeStamp,
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
    );
  }
}
