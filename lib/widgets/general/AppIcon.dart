// ignore_for_file: file_names

import 'package:flutter/cupertino.dart';
import 'package:food_ring/configurations/Dimensions.dart';

class AppIcon extends StatelessWidget {
 

  final IconData icon;
  final Color backgroundColor;
  final Color iconColor;
  final double size;

const AppIcon({Key? key,
   required this.icon,
   this.backgroundColor = const Color.fromARGB(255, 236, 236, 236),
   this.iconColor= const Color.fromARGB(255, 0, 0, 0),
   this.size=40,
  }): super(key: key);



  @override
  Widget build(BuildContext context) {
    return Container(

      width: size,
      height: size,
      decoration: BoxDecoration(
        // boxShadow: BoxShadow[

        // ],
        borderRadius: BorderRadius.circular(size/2),
        color: backgroundColor,
      ),
      child: Icon(
        icon,
        color: iconColor,
        size:Dimensions.icon15,
      ),
    );
  }
}