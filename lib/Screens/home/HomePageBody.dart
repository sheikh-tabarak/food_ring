// ignore_for_file: file_names

import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:food_ring/widgets/general/SmallText.dart';
import 'package:food_ring/widgets/resturants/Icons_and_text_widget.dart';

import '../../classes/DummyData.dart';
import '../../configurations/AppColors.dart';
import '../../configurations/Dimensions.dart';
import '../../widgets/general/BigText.dart';
import '../../widgets/resturants/ProductSlider.dart';

class HomePageBody extends StatefulWidget {
  const HomePageBody({super.key});

  @override
  State<HomePageBody> createState() => _HomePageBodyState();
}

class _HomePageBodyState extends State<HomePageBody> {
 
  PageController pagecontroller = PageController(viewportFraction: 0.85);
  var _currentPageValue = 0.0;

// This is the function to get the current index of slider / page index
// to change the navigation accordingly

  @override
  void initState() {
    super.initState();
    pagecontroller.addListener(() {
      setState(() {
        _currentPageValue = pagecontroller.page!;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.white,
          padding: const EdgeInsets.only(top: 20),
          height: Dimensions.PageView,
          // Product Slider from Widgets/Slider using PageView
         child: PageView.builder(
            controller: pagecontroller,
            itemCount: ProductsData.length,
            itemBuilder: (context, position) {
         // Product Slider getting data from the file
              return ProductSlider(index:position);
            },
          ),
        ),
        // These Are Dots Navigation
        DotsIndicator(
          dotsCount: ProductsData.length,
          position: _currentPageValue,
          decorator: DotsDecorator(
            size: const Size.square(6.0),
            //color: AppColors.mainColor,
            activeSize: const Size(12.0, 6.0),
            activeColor: AppColors.mainColor,
            activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0)),
          ),
        ),

        SizedBox(height: Dimensions.height30),

        // Popular Text
        Container(
          margin: EdgeInsets.only(
              left: Dimensions.width30, bottom: Dimensions.height20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              BigText(text: 'Recommendations'),
              SizedBox(
                width: Dimensions.width10,
              ),
              SmallText(text: '•'),
              SizedBox(
                width: Dimensions.width10,
              ),
              SmallText(text: 'Food')
            ],
          ),
        ),
     
        //List of Products / resturants
        ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          
          itemCount: 5,


          itemBuilder: (context, index) {
            print(ProductsData.length-1);
            return GestureDetector(

              onTap: () {
   
      },



              child: Container(
              //          color: Color.fromARGB(255, 192, 192, 192),

              margin: EdgeInsets.only(
                  left: Dimensions.width20,
                  right: Dimensions.width20,
                  bottom: Dimensions.height10),

              child: Row(
                children: [
                  Container(
                      width: Dimensions.listViewImgSize,
                      height: Dimensions.listViewImgSize,
                  
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(Dimensions.radius10),
                        color: AppColors.mainColor,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image:  NetworkImage(ProductsData[index].pimageUrl),
                           //AssetImage("assets/image/foodhome4.jpg"),
                        ),
                      )),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(Dimensions.radius20),
                          bottomRight: Radius.circular(Dimensions.radius20),
                        ),
                        color: const Color.fromARGB(250, 255, 255, 255),
                        boxShadow: const [
                          BoxShadow(
                              color: Color.fromARGB(255, 192, 192, 192),
                              blurRadius: 5.0,
                              offset: Offset(1, 1))
                        ],
                      ),
                      height: Dimensions.listViewTextboxSize,
                      padding: EdgeInsets.all(Dimensions.width10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          BigText(text: ProductsData[index].pName),
                          // SizedBox(height: Dimensions.height5),
                          BigText(
                            text: ProductsData[index].pRegularPrice.toString(),
                            color: AppColors.mainColor,
                          ),
                          SizedBox(height: Dimensions.height5),
                          SmallText(text: ProductsData[index].pDescription.length>20?'${ProductsData[index].pDescription.substring(0,30)}}...':ProductsData[index].pDescription),
                          SizedBox(height: Dimensions.height5),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                IconAndTextWidget(
                                    icon: Icons.fastfood,
                                    IconColor: AppColors.yellowColor,
                                    text: 'Fast Food',
                                    color: Colors.grey),
                                IconAndTextWidget(
                                    icon: Icons.location_pin,
                                    IconColor: AppColors.mainColor,
                                    text: 'Guj.',
                                    color: Colors.grey),
                                IconAndTextWidget(
                                    icon: Icons.punch_clock,
                                    IconColor: AppColors.iconColor2,
                                    text: '32 min',
                                    color: Colors.grey),
                              ]),
                        ],
                      ),
                    ),
                  )
                ],
              ),
),
            );
          },
        ),
      ],
    );
  }
}
