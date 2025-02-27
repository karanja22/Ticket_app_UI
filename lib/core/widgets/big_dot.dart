import 'package:flutter/material.dart';
import 'package:ticket_app/core/styles/app_styles.dart';

class BigDot extends StatelessWidget {
  const BigDot({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(3),
      decoration: BoxDecoration(
        border: Border.all(width: 2.5, color: AppStyles.secColor),
        borderRadius: BorderRadius.circular(20)
      ),
    );
  }
}