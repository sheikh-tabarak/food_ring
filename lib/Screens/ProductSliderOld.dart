// ignore_for_file: file_names

import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:food_ring/widgets/general/SmallText.dart';
import 'package:food_ring/widgets/resturants/Icons_and_text_widget.dart';

import '../configurations/AppColors.dart';
import '../widgets/general/BigText.dart';

class ProductSlider extends StatefulWidget {
  const ProductSlider({super.key});

  @override
  State<ProductSlider> createState() => _ProductSliderState();
}

class _ProductSliderState extends State<ProductSlider> {
  PageController pagecontroller = PageController(viewportFraction: 0.85);
  var _currentPageValue=0.0;

  @override
  void initState(){
    super.initState();
    pagecontroller.addListener(() {
      setState(() {
        _currentPageValue=pagecontroller.page!;
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
      height: 320,
      child: PageView.builder(
        controller: pagecontroller,
        itemCount: 5,
      
        itemBuilder: (context, position) {
          return _buildPageItem(position);
        },
      ),
    ),
    DotsIndicator(
  dotsCount: 5,
  position: _currentPageValue,
  decorator: DotsDecorator(
    size: const Size.square(6.0),
    //color: AppColors.mainColor,
    activeSize: const Size(12.0, 6.0),
    activeColor:AppColors.mainColor ,
    activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
  ),
),

      ],
    );
     }

  Widget _buildPageItem(int index) {
    return Stack(
      children: [
        Container(
          height: 220,
          margin: const EdgeInsets.only(left: 5, right: 5),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: index.isEven
                  ? const Color.fromARGB(255, 255, 255, 255)
                  : AppColors.mainColor,
              image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/image/foodhome2.jpg"))),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 120,
            width: 300,

            margin: const EdgeInsets.only(left: 30, right: 30, bottom: 15),
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              boxShadow:const [
                BoxShadow(
                color:Color.fromARGB(255, 192, 192, 192),
                blurRadius: 5.0,
                offset: Offset(0,5)
                )
              ] 
            ),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(children: [
                BigText(
                  text: 'Zinger Burger',
                  color: AppColors.mainBlackColor,
                ),
                const SizedBox(
                  width: 5,
                ),
                BigText(
                  text: '• \$',
                  color: AppColors.mainColor,
                ), 
                BigText(
                  text: '4.3',
                  color: AppColors.mainColor,
                ),
              ]),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Wrap(
                    children: List.generate(
                        5,
                        (index) => Icon(
                              Icons.star,
                              color: AppColors.mainColor,
                              size: 15,
                            )),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  SmallText(text: '4.5'),
                  const SizedBox(
                    width: 5,
                  ),
                  SmallText(text: '( '),
                  SmallText(text: '140'),
                  const SizedBox(
                    width: 5,
                  ),
                  SmallText(text: 'Reviews )'),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
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
                    text: 'Gujranwala',
                    color: Colors.grey),
               
                 IconAndTextWidget(
                    icon: Icons.punch_clock,
                    IconColor: AppColors.iconColor2,
                    text: '32 min',
                    color: Colors.grey),
              
              ]
          ),
                ]),

          ),

        )


      ],
    );
  }
}
