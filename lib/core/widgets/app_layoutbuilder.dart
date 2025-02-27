import 'package:flutter/material.dart';
import 'package:ticket_app/core/styles/app_styles.dart';

class AppLayoutbuilderWidget extends StatelessWidget {
  final int randomDivider;
  // final double width; 
  const AppLayoutbuilderWidget({super.key, required this.randomDivider});
// this.width = 3
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints)
    {
            return Flex(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              direction: Axis.horizontal,
              children: List.generate((constraints.constrainWidth()/randomDivider).floor(), (index) => SizedBox(
                height: 1,
                width: 3,
                child: DecoratedBox(decoration: BoxDecoration(
                  color: AppStyles.secColor,
                ),),
              ),),);
    },);
  }
}