import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/core/styles/app_styles.dart';
import 'package:ticket_app/core/styles/appmedia.dart';
import 'package:ticket_app/core/utils/app_routes.dart';
import 'package:ticket_app/core/utils/at_json.dart';
import 'package:ticket_app/core/widgets/app_double_text.dart';
import 'package:ticket_app/core/widgets/ticket_view.dart';
import 'package:ticket_app/screens/home/hotels.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgcolor,
      body: ListView(
        children: [
          SizedBox(height: 40),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Hello", style: AppStyles.headline3),
                        SizedBox(height: 5),
                        Text("Book Tickets", style: AppStyles.headline1),
                      ],
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage(AppMedia.logo),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFFF4F6FD),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        FluentSystemIcons.ic_fluent_search_regular,
                        color: Color(0xFFBFC205),
                      ),
                      Text("Search"),
                    ],
                  ),
                ),
                SizedBox(height: 40),
                AppDoubleText(
                  bigText: 'Upcoming Flights',
                  smallText: 'View all',
                   func: () => Navigator.pushNamed(context, AppRoutes.allTickets),

                ),
                SizedBox(height: 20),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children:
                        ticketList
                            .map(
                              (singleTicket) =>
                                  Ticketview(ticket: singleTicket),
                            )
                            .toList(),
                  ),
                ),
                SizedBox(height: 20),
                AppDoubleText(
                  bigText: 'Hotels',
                  smallText: 'View all',
                   func: () => Navigator.pushNamed(context, AppRoutes.allHotels),
                ),
                SizedBox(height: 20),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: 
                      hotelList.map((singleHotel) => Hotel(hotel: singleHotel),).toList(),
                  ),),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
