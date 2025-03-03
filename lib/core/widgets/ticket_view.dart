import 'package:flutter/material.dart';
import 'package:ticket_app/core/styles/app_styles.dart';
import 'package:ticket_app/core/widgets/app_layoutbuilder.dart';
import 'package:ticket_app/core/widgets/big_circle.dart';
import 'package:ticket_app/core/widgets/big_dot.dart';
import 'package:ticket_app/core/widgets/ticket_red_layout.dart';
import 'package:ticket_app/core/widgets/ticket_text.dart';

class Ticketview extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool wholeScreen;
  final bool? isColor;
  const Ticketview({
    super.key,
    required this.ticket,
    this.wholeScreen = false,
    this.isColor,
  });
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width * 0.85,
      height: 180,
      // entire ticket
      child: Container(
        margin: EdgeInsets.only(right: wholeScreen == true ? 0 : 16),
        child: Column(
          children: [
            // blue part of ticket
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color:
                    isColor == null ? AppStyles.ticketBlue : AppStyles.secColor,
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
                      TicketInitials(
                        initials: ticket["from"]["code"],
                        isColor: isColor,
                      ),
                      Expanded(child: Container()),
                      BigDot(isColor: isColor),
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
                                  color:
                                      isColor == null
                                          ? AppStyles.secColor
                                          : AppStyles.plane2,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      BigDot(isColor: isColor),
                      Expanded(child: Container()),
                      TicketInitials(
                        initials: ticket["to"]["code"],
                        align: TextAlign.end,
                        isColor: isColor,
                      ),
                    ],
                  ),
                  SizedBox(height: 3),
                  // show departure and destination in words
                  Row(
                    children: [
                      SizedBox(
                        width: 100,
                        child: TicketFullname(
                          fullname: ticket["from"]["name"],
                          isColor: isColor,
                        ),
                      ),
                      Expanded(child: Container()),
                      TicketFullname(
                        fullname: ticket["flying_time"],
                        isColor: isColor,
                      ),
                      Expanded(child: Container()),
                      SizedBox(
                        width: 100,
                        child: TicketFullname(
                          fullname: ticket["to"]["name"],
                          align: TextAlign.end,
                          isColor: isColor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // middle part of ticket
            Container(
              color: isColor==null? AppStyles.ticketRed:AppStyles.secColor,
              child: Row(
                children: [
                  BigCircle(isRight: false,isColor: isColor,),
                  Expanded(child: AppLayoutbuilderWidget(randomDivider: 10,isColor: isColor,)),
                  BigCircle(isRight: true,isColor: isColor,),
                ],
              ),
            ),
            // red part of ticket
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color:
                    isColor == null ? AppStyles.ticketRed : AppStyles.secColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(isColor==null?21:0),
                  bottomRight: Radius.circular(isColor==null?21:0),
                ),
              ),
              child: Column(
                children: [
                  // Date, time, Number symbols
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TicketRedLayout(
                        topText: ticket["date"],
                        bottomText: "Date",
                        alignment: CrossAxisAlignment.start,
                        isColor: isColor,
                      ),
                      TicketRedLayout(
                        topText: ticket["departure_time"],
                        bottomText: "Departure Time",
                        alignment: CrossAxisAlignment.center,
                        isColor: isColor,
                      ),
                      TicketRedLayout(
                        topText: ticket["number"].toString(),
                        bottomText: "Number",
                        alignment: CrossAxisAlignment.end,
                        isColor: isColor,
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
