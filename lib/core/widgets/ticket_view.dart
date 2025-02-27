import 'package:flutter/material.dart';
import 'package:ticket_app/core/styles/app_styles.dart';
import 'package:ticket_app/core/widgets/app_layoutbuilder.dart';
import 'package:ticket_app/core/widgets/big_circle.dart';
import 'package:ticket_app/core/widgets/big_dot.dart';

class Ticketview extends StatelessWidget {
  const Ticketview({super.key});
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width * 0.85,
      height: 189,
      // entire ticket
      child: Container(
       margin: EdgeInsets.only(right: (16)),
        child: Column(
          children: [
            // blue part of ticket
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppStyles.ticketBlue,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(21),
                  topRight: Radius.circular(21),
                ),
              ),
              child: Column(
                children: [
                  // show departure and destination in initials
                  Row(
                    children: [
                      Text(
                        "NYC",
                        style: AppStyles.headline3.copyWith(
                          color: AppStyles.secColor,
                        ),
                      ),
                      Expanded(child: Container()),
                      BigDot(),
                      Expanded(
                        child: Stack(
                          children: [
                            SizedBox(
                              height: 24,
                              child: AppLayoutbuilderWidget(randomDivider: 6),
                            ),
                            Center(
                              child: Transform.rotate(
                                angle: 1.5,
                                child: Icon(
                                  Icons.local_airport_rounded,
                                  color: AppStyles.secColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      BigDot(),
                      Expanded(child: Container()),
                      Text(
                        "LDN",
                        style: AppStyles.headline3.copyWith(
                          color: AppStyles.secColor,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 3,), 
                  // show departure and destination in words 
                  Row(
                    children: [
                      SizedBox(
                        width: 100,
                        child: Text(
                          "New York",
                          style: AppStyles.headline4.copyWith(
                            color: AppStyles.secColor,
                          ),
                        ),
                      ),
                      Expanded(child: Container()),
                      Text("8H 30M",style:AppStyles.headline4.copyWith(color: AppStyles.secColor),),
                      Expanded(child: Container()),
                      SizedBox(
                        width: 100,
                        child: Text(
                          textAlign: TextAlign.end,
                          "London",
                          style: AppStyles.headline4 .copyWith(
                            color: AppStyles.secColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          // middle part of ticket
          Container(
            color: AppStyles.ticketRed,
            child: Row(
              children: [
                BigCircle(isRight: false,),
                Expanded(child: AppLayoutbuilderWidget(randomDivider: 10,),),
                BigCircle(isRight: true,),
              ],
            ),
            
          ),
          // red part of ticket
          Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppStyles.ticketRed,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(21),
                  bottomRight: Radius.circular(21),
                ),
              ),
              child: Column(
                children: [
                  // show departure and destination in initials
                  Row(
                    children: [
                      SizedBox(
                        width: 100,
                        child: Text(
                          "1 MAY",
                          style: AppStyles.headline3.copyWith(
                            color: AppStyles.secColor,
                          ),
                        ),
                      ),
                      Expanded(child: Container()),
                      Text(
                        "O8:00 AM",
                      style: AppStyles.headline3.copyWith(
                          color: AppStyles.secColor),),
                      Expanded(child: Container()),
                      SizedBox(
                        width: 100,
                        child: Text(
                          textAlign: TextAlign.end,
                          "23",
                          style: AppStyles.headline3.copyWith(
                            color: AppStyles.secColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 3,),  
                  Row(
                    children: [
                      SizedBox(
                        width: 100,
                        child: Text(
                          "Date",
                          style: AppStyles.headline4.copyWith(
                            color: AppStyles.secColor,
                          ),
                        ),
                      ),
                      Expanded(child: Container()),
                      Text("Departure Time",style:AppStyles.headline4.copyWith(
                        color: AppStyles.secColor) ,),
                      Expanded(child: Container()),
                      SizedBox(
                        width: 100,
                        child: Text(
                          textAlign: TextAlign.end,
                          "Number",
                          style: AppStyles.headline4.copyWith(
                            color: AppStyles.secColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
