import 'package:flutter/material.dart';
import 'package:ticket_app/core/styles/app_styles.dart';

class Hotel extends StatelessWidget {
  final Map <String, dynamic> hotel;
  const Hotel({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width*0.6,
      height: 350,
      padding: EdgeInsets.all(8.0),
      margin: EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
        color: AppStyles.primaryColor,
        borderRadius: BorderRadius.circular(24)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
              color: AppStyles.primaryColor,
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/${hotel["image"]}"))
            ),
          ),
          SizedBox(height: 10,),
          Text(
           hotel["place"],
           style: AppStyles.headline1.copyWith(color: AppStyles.kakiColor),),
           SizedBox(height: 5,),
          Text(
           hotel["destination"],
           style: AppStyles.headline3.copyWith(color: AppStyles.secColor),),
           SizedBox(height: 5,),
          Text(
           "\$${hotel["price"]}/night",
           style: AppStyles.headline1.copyWith(color: AppStyles.kakiColor),),
        ],
      ),
    );
  }
}