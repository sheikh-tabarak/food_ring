// ignore_for_file: non_constant_identifier_names, file_names

import 'package:flutter/cupertino.dart';
import 'package:food_ring/configurations/Dimensions.dart';

import '../general/SmallText.dart';

class IconAndTextWidget extends StatelessWidget {

  final IconData icon;
  final String text;
  final Color color;
  final Color IconColor;


  const IconAndTextWidget({Key? key,
  
  required this.icon,
  required this.IconColor,
  required this.text,
  required this.color,
     
  }):super(key:key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [

                Icon(icon,color:IconColor,size: Dimensions.icon15,),
                SizedBox(
                width: Dimensions.width5,
              ),
                SmallText(text:text),
               
              ],
              );
  }
}