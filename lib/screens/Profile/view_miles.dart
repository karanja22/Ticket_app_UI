import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/core/styles/app_styles.dart';
import 'package:ticket_app/core/utils/app_routes.dart';
import 'package:ticket_app/core/widgets/app_layoutbuilder.dart';
import 'package:ticket_app/screens/Profile/app_column_layout.dart';

class ViewMiles extends StatelessWidget {
  const ViewMiles({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("View Miles"),
        backgroundColor: AppStyles.bgcolor,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      backgroundColor: AppStyles.bgcolor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 86,
                width: 86,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage("assets/images/logo.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Book Tickets", style: AppStyles.headline1),
                  Text(
                    "New-York",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: Colors.grey.shade500,
                    ),
                  ),
                  SizedBox(height: 8),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: const Color(0xFFFEF4F3),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 3, vertical: 3),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(3),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: const Color(0xFF526799),
                          ),
                          child: Icon(
                            FluentSystemIcons.ic_fluent_shield_filled,
                            color: Colors.white,
                            size: 15,
                          ),
                        ),
                        SizedBox(width: 5),
                        Text(
                          "Premium status",
                          style: TextStyle(
                            color: const Color(0xFF526799),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
             
            ],
          ),
          SizedBox(height: 20),
          Divider(color: Colors.grey.shade300, thickness: 1.5), 
          SizedBox(height: 20),
          Stack(
            children: [
              Container(
                height: 90,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppStyles.ticketBlue,
                  borderRadius: BorderRadius.circular(18),
                ),
              ),
              Positioned(
                  right: -45,
                  top: -40,
                  child: Container(
                    padding: EdgeInsets.all(30),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.transparent,
                      border:Border.all(
                        width: 18,
                        color: Color(0xFF264CD2),
                        ) ,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        maxRadius: 25,
                        backgroundColor: AppStyles.secColor,
                        child: Icon(FluentSystemIcons.ic_fluent_lightbulb_filament_filled, color: AppStyles.textColor, size: 27,),
                      ),
                      SizedBox(width: 12),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("You’ve got a new award", style: AppStyles.headline2.copyWith(color: AppStyles.secColor, fontWeight: FontWeight.bold),),
                          // ignore: deprecated_member_use
                          Text("You’ve 95 flights this year", style: AppStyles.headline2.copyWith(color: AppStyles.secColor.withOpacity(0.9), fontWeight: FontWeight.w500, fontSize: 16),),
                        ],
                      )
                    ],
                  ),
                ),
            ],
          ),
          SizedBox(height: 20),
          Text(
            "Accumulated miles",
            style: AppStyles.headline2,
          ),
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              color: AppStyles.bgcolor,
              boxShadow:[ BoxShadow(
                color: Colors.grey.shade200,
                blurRadius: 1,
                spreadRadius: 1,
              )]
            ),
            child: Column(
              children: [
                Text("192802", style: TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.w600,
                  color: AppStyles.textColor,
                ),),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Miles accrued", style: AppStyles.headline4.copyWith(fontSize: 16),),
                    SizedBox(width: 5),
                    Text("11 Jan 2025", style: AppStyles.headline4.copyWith(fontSize: 16),),
                  ],
                ),
                SizedBox(height: 4,),
                Divider(color: Colors.grey.shade300,),
                SizedBox(height: 4,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnLayout(firsttext: "23 042", secondtext: "Miles", alignment: CrossAxisAlignment.start, isColor: false,),
                    AppColumnLayout(firsttext: "Airline CO", secondtext: "Received from", alignment: CrossAxisAlignment.end, isColor: false,)
                  ],
                ),
                SizedBox(height: 12,),
                AppLayoutbuilderWidget(randomDivider: 12, isColor: false,),
                SizedBox(height: 12,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnLayout(firsttext: "24", secondtext: "Miles", alignment: CrossAxisAlignment.start, isColor: false,),
                    AppColumnLayout(firsttext: "McDonald's", secondtext: "Received from", alignment: CrossAxisAlignment.end, isColor: false,)
                  ],
                ),
                SizedBox(height: 12,),
                AppLayoutbuilderWidget(randomDivider: 12, isColor: false,),
                SizedBox(height: 12,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnLayout(firsttext: "52 340", secondtext: "Miles", alignment: CrossAxisAlignment.start, isColor: false,),
                    AppColumnLayout(firsttext: "Exuma", secondtext: "Received from", alignment: CrossAxisAlignment.end, isColor: false,)
                  ],
                ),
                SizedBox(height: 12,),
                AppLayoutbuilderWidget(randomDivider: 12, isColor: false,),
                SizedBox(height: 12,),
              ],
            ),
          )
          ,InkWell(
            onTap: () => Navigator.pushNamed(context, AppRoutes.getMoreMiles),
            child: Center(
              child: Text("How to get more miles",
                      style: AppStyles.textStyle
              ),
            ),
          )
      ],
      ),
    );
  }
}
