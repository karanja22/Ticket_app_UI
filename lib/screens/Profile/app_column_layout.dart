import 'package:flutter/material.dart';
import 'package:ticket_app/core/styles/app_styles.dart';

class AppColumnLayout extends StatelessWidget {
  final CrossAxisAlignment alignment;
  final String firsttext;
  final String secondtext;
  final TextAlign align;
  final bool? isColor;
  const AppColumnLayout({ super.key,
    required this.firsttext,
    required this.secondtext,
    this.align = TextAlign.start,
     required this.alignment,
    this.isColor,
  });

  @override
  Widget build(BuildContext context) {
   return Column(
     crossAxisAlignment: alignment,
     children: [
      Text(firsttext, style: isColor == null?AppStyles.headline3.copyWith(color: AppStyles.secColor,): AppStyles.headline3,),
      SizedBox(height: 5,),
      Text(secondtext, style: isColor == null?AppStyles.headline4.copyWith(color: AppStyles.secColor,): AppStyles.headline4,),

     ],
   );
}
}
