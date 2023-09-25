// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:food_ring/Screens/resturants/resturantDetailPage.dart';
import '../../classes/DummyData.dart';
import '../../configurations/AppColors.dart';
import '../../configurations/Dimensions.dart';
import '../../widgets/general/BigText.dart';
import '../../widgets/general/SmallText.dart';

class ResturantPage extends StatefulWidget {
  const ResturantPage({
    super.key,
  });

  @override
  State<ResturantPage> createState() => _ResturantPageState();
}

class _ResturantPageState extends State<ResturantPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(Dimensions.height10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BigText(
            text: 'Recommended Resturants',
            size: Dimensions.height20,
          ),
          SizedBox(
            height: Dimensions.height15,
          ),
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: ResturantsData.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ResturantDetailPage(resturantid:index)));

                  //const snackBar = SnackBar(content: Text('Enter to product details'));
                  //    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
                child: Container(
                  margin: EdgeInsets.only(
                      top: Dimensions.height10, bottom: Dimensions.height10),
                  child: Stack(
                    children: [
                      Container(
                        height: Dimensions.height30 * 5,
                        //   margin: const EdgeInsets.all(0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(Dimensions.radius10),
                              topRight: Radius.circular(Dimensions.radius10)),
                          color: AppColors.mainColor,
                          image: DecorationImage(
                              image:
                                  NetworkImage(ResturantsData[index].rimageUrl),
                              fit: BoxFit.cover),
                          // To use the Image from the Assets :
                          // => AssetImage("assets/image/foodhome2.jpg"))),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(Dimensions.height10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                                width: 1,
                                color: Color.fromARGB(255, 211, 211, 211)),
                            borderRadius: BorderRadius.only(
                                bottomLeft:
                                    Radius.circular(Dimensions.radius10),
                                bottomRight:
                                    Radius.circular(Dimensions.radius10))),
                        margin:
                            EdgeInsets.only(top: Dimensions.height30 * 5 - 5),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  BigText(text: ResturantsData[index].rtitle),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        size: Dimensions.font15,
                                        color: AppColors.mainColor,
                                      ),
                                      SizedBox(
                                        width: Dimensions.width5,
                                      ),
                                      SmallText(text: '4.7'),
                                      SizedBox(
                                        width: Dimensions.width5,
                                      ),
                                      SmallText(text: '(190)')
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(
                                height: Dimensions.height5,
                              ),
                              SmallText(
                                  text: ResturantsData[index].rdescription),
                              SizedBox(
                                height: Dimensions.height5,
                              ),
                              Row(
                                children: [
                                  Icon(Icons.delivery_dining),
                                  SizedBox(
                                    width: Dimensions.width5,
                                  ),
                                  SmallText(
                                      text:
                                          'Rs. ${ResturantsData[index].rMinDelivery}'),
                                ],
                              )
                            ]),
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
