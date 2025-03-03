import 'package:flutter/material.dart';
import 'package:ticket_app/core/styles/app_styles.dart';

class AppTextIcon extends StatelessWidget {
  final String text;
  final IconData icon;
  const AppTextIcon({super.key, required this.text, required this.icon, });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12,horizontal: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppStyles.secColor
      ),
      child: Row(
        children: [
          Icon(icon, color: AppStyles.planeIcon,
          ),
          SizedBox(width: 10,),
          Text(text,style: AppStyles.textStyle,),
        ],
      ),
    );
  }
}