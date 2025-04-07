
import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/core/styles/app_styles.dart';
import 'package:ticket_app/core/styles/appmedia.dart';
import 'package:ticket_app/core/utils/at_json.dart';
import 'package:ticket_app/core/widgets/app_layoutbuilder.dart';
import 'package:ticket_app/core/widgets/ticket_red_layout.dart';
import 'package:ticket_app/core/widgets/ticket_view.dart';
import 'package:ticket_app/screens/search/app_ticket_tab.dart';
import 'package:ticket_app/screens/ticket/ticket_stack_circles.dart';

class TicketScreen extends StatefulWidget {
  const TicketScreen({super.key});

  @override
  State<TicketScreen> createState() => _TicketScreenState();
}

class _TicketScreenState extends State<TicketScreen> {
  late int ticketIndex = 0;
@override
void didChangeDependencies() {
  super.didChangeDependencies(); // Call super first!
  final args = ModalRoute.of(context)?.settings.arguments;
  if (args != null && args is Map) {
    ticketIndex = args["index"] as int;
  } else {
    ticketIndex = 0; // Default value
  }
}
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgcolor,
      appBar: AppBar(
        backgroundColor:AppStyles.bgcolor,
        title: Text("Tickets",style: AppStyles.headline1,textAlign: TextAlign.center,),
      ),
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(vertical: 0, horizontal: 20),
            children: [
              // Text("Tickets", style: AppStyles.headline1),
              // SizedBox(height: 20),
              AppTicketTab(firstTab: 'Upcoming', secondTab: 'Previous'),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.only(left: 16),
                child: Ticketview(ticket: ticketList[ticketIndex], isColor: true),
              ),
              SizedBox(height: 1),
              Container(
                color: AppStyles.secColor,
                margin: EdgeInsets.symmetric(horizontal: 16),
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TicketRedLayout(
                          topText: "Karanja F",
                          bottomText: "Passenger",
                          alignment: CrossAxisAlignment.start,
                          isColor: true,
                        ),
                        TicketRedLayout(
                          topText: "5221 39345",
                          bottomText: "Passport",
                          alignment: CrossAxisAlignment.end,
                          isColor: true,
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    AppLayoutbuilderWidget(randomDivider: 10, isColor: true),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TicketRedLayout(
                          topText: "8905 454355",
                          bottomText: "Number of E-ticket",
                          alignment: CrossAxisAlignment.start,
                          isColor: true,
                        ),
                        TicketRedLayout(
                          topText: "B139345",
                          bottomText: "Booking code",
                          alignment: CrossAxisAlignment.end,
                          isColor: true,
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    AppLayoutbuilderWidget(randomDivider: 10, isColor: true),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Image.asset(AppMedia.visacard, scale: 11),
                                Text("***2456", style: AppStyles.headline3),
                              ],
                            ),
                            SizedBox(height: 5),
                            Text("Payment method", style: AppStyles.headline4),
                          ],
                        ),
                        TicketRedLayout(
                          topText: "\$249.99",
                          bottomText: "Price",
                          alignment: CrossAxisAlignment.end,
                          isColor: true,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 1),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16),
                padding: EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  color: AppStyles.secColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(21),
                    bottomRight: Radius.circular(21),
                  ),
                ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: BarcodeWidget(
                      height: 70,
                      data: 'https://www.dbestech.com',
                      barcode: Barcode.code128(),
                      drawText: false,
                      width: double.infinity,
                    ),
                  ),
                ),
              
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.only(left: 16),
                child: Ticketview(ticket: ticketList[ticketIndex],),
              ),
            ],
          ),
          TicketStackCircles(pos: true,),
          TicketStackCircles(pos: null,)
        ],
      ),
      
    );
  }
}
