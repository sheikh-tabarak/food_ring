// ignore_for_file: must_be_immutable,, file_names

import 'package:flutter/cupertino.dart';
import '../../configurations/Dimensions.dart';

class BigText extends StatelessWidget {
  //const BigText({super.key});

  final Color? color;
  final String text;
  double size;
  TextOverflow overFlow;

  BigText(
      {Key? key,
      this.color= const Color.fromARGB(255, 0, 0, 0),
      required this.text,
      this.size=0,
      this.overFlow = TextOverflow.ellipsis})
      : super(key: key);

  @override

  Widget build(BuildContext context) {
    return Text(text,
    maxLines: 1,
        overflow: overFlow,
        style: TextStyle(
          fontSize: size==0?Dimensions.font20:size,
          color: color,
          fontWeight: FontWeight.w500,
        ));
  }
}
