// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:food_ring/configurations/AppColors.dart';
import 'package:food_ring/configurations/Dimensions.dart';
import 'SmallText.dart';

class ExpandableText extends StatefulWidget {
  final String text;

  const ExpandableText({
    super.key,
    required this.text,
  });

  @override
  State<ExpandableText> createState() => _ExpandableTextState();
}

class _ExpandableTextState extends State<ExpandableText> {
  late String firstHalf;
  late String secondHalf;
  late String finaltext;
  late IconData arrowicon;

  bool hiddenText = true;
  double textHeight = Dimensions.screenHeight / 4;

  @override
  void initState() {
    super.initState();
    if (widget.text.length > textHeight) {
      firstHalf = widget.text.substring(0, textHeight.toInt());
      secondHalf =
          widget.text.substring(textHeight.toInt() + 1, widget.text.length);
      finaltext = firstHalf;
      arrowicon = Icons.arrow_drop_down;
    } else {
      firstHalf = widget.text;
      finaltext = firstHalf;
      secondHalf = '';
      arrowicon = Icons.arrow_drop_up;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: secondHalf.isEmpty
          ? SmallText(text: firstHalf)
          : Column(children: [
              SmallText(
                  size: Dimensions.font15,
                  text: hiddenText
                      ? ('$firstHalf...')
                      : (finaltext + secondHalf)),

              SizedBox(height: Dimensions.height10),
              
              InkWell(
                  onTap: () => {
                        setState(() => hiddenText = !hiddenText)
                        // if (hiddenText == true)
                        //   {
                        //     setState(() => hiddenText = false),
                        //     arrowicon = Icons.arrow_upward_sharp
                        //   }
                        // else
                        //   {
                        //     setState(() => hiddenText = true),
                        //     arrowicon = Icons.arrow_downward
                        //   }
                      },
                  child: Row(
                    children: [
                      SmallText(
                        text: 'Read More',
                        size: Dimensions.font15,
                        color: AppColors.mainColor,
                      ),
                      Icon(
                          hiddenText
                              ? Icons.arrow_drop_down
                              : Icons.arrow_drop_up,
                          color: AppColors.mainColor,
                          size: Dimensions.font15),
                    ],
                  ))
            ]),
    );
  }
}
