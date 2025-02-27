import 'package:flutter/material.dart';

import '../styles/app_styles.dart';

class BigCircle extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final isRight;

  const BigCircle({super.key,required this.isRight});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20,
      width: 10,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: AppStyles.secColor,
          borderRadius:isRight== true?
           BorderRadius.only(
            topLeft: Radius.circular(10),
            bottomLeft: Radius.circular(10),
          )
          :
           BorderRadius.only(
            topRight: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
        ),
      ),
    );
  }
}
