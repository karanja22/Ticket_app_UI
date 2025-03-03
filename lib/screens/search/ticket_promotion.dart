import 'package:flutter/material.dart';
import 'package:ticket_app/core/styles/app_styles.dart';
import 'package:ticket_app/core/styles/appmedia.dart';

class SearchBoxes extends StatelessWidget {
  const SearchBoxes({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 435,
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
          width: size.width * 0.42,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: AppStyles.secColor,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade200,
                blurRadius: 1,
                spreadRadius: 2,
              ),
            ],
          ),
          child: Column(
            children: [
              Container(
                height: 190,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    image: AssetImage(AppMedia.planesit),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 12),
              Text(
                "20% Discount on the early booking of this flight, Don't miss",
                style: AppStyles.headline2,
              ),
            ],
          ),
        ),
        Column(
          children: [
            Stack(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 15,horizontal: 15),
                  width: size.width * 0.44,
                  height: 210,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: AppStyles.sbox1,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Discount\nfor survey",
                        style: AppStyles.headline2.copyWith(
                          color: AppStyles.secColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Take our survey about our services to get discount",
                        style: AppStyles.headline2.copyWith(
                          color: AppStyles.secColor,
                          fontWeight: FontWeight.w500,
                          fontSize: 18
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  right: -45,
                  top: -40,
                  child: Container(
                    padding: EdgeInsets.all(30),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border:Border.all(
                        width: 18,
                        color: Color(0xFF189999),
                        ) ,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 15,),
            Container(
              padding: EdgeInsets.symmetric(vertical: 15,horizontal: 15),
              height: 210,
              width: size.width*.44,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: AppStyles.sbox2,
              ),
              child: Column(
                children: [
                  Text("Take love",
                  style: AppStyles.headline2.copyWith(color: AppStyles.secColor),)
                ],
              ),
            )
           ],
        ),
        
      ],
    );
  }
}
