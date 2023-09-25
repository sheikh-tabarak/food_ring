// ignore_for_file: file_names, must_be_immutable

import 'package:flutter/cupertino.dart';
import '../../configurations/Dimensions.dart';

class SmallText extends StatelessWidget {
  //const BigText({super.key});

  final Color? color;
  final String text;
  double size;
  FontWeight weight;
  double height;

  SmallText(
      {Key? key,
      this.color= const Color.fromARGB(255, 104, 104, 104),
      required this.text,
      this.size = 0,
      this.weight=FontWeight.w400,
     // this.overFlow = TextOverflow.ellipsis, 
      this.height=1.2,
      })
      : super(key: key);

  @override

  Widget build(BuildContext context) {
    return Text(text,
     //   overflow: overFlow,
        style: TextStyle(
         
          fontSize: size==0?Dimensions.font12:size,
          color: color,
          fontWeight: weight==FontWeight.w400?FontWeight.w400:weight,
          height: height,
        //  FontWeight:Weight,
        ));
  }
}
