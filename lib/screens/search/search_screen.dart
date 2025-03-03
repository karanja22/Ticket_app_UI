import 'package:flutter/material.dart';
import 'package:ticket_app/core/styles/app_styles.dart';
import 'package:ticket_app/core/utils/app_routes.dart';
import 'package:ticket_app/core/widgets/app_double_text.dart';
import 'package:ticket_app/screens/search/app_text_icon.dart';
import 'package:ticket_app/screens/search/app_ticket_tab.dart';
import 'package:ticket_app/screens/search/find_ticket.dart';
import 'package:ticket_app/screens/search/ticket_promotion.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgcolor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
        children: [
          SizedBox(height: 10,),
          Text("What are \nyou looking for?", style: AppStyles.headline1.copyWith(fontSize: 35),),
          SizedBox(height: 25,),
          AppTicketTab(firstTab: 'Airline Tickets', secondTab: 'Hotels',),
          SizedBox(height: 20,),
          AppTextIcon(text: 'Departure', icon: Icons.flight_takeoff_rounded,),
          SizedBox(height: 20,),
          AppTextIcon(text: 'Arrival', icon: Icons.flight_land_rounded, ),
          SizedBox(height: 25,),
          FindTicket(),
          SizedBox(height: 40,),
          AppDoubleText(
                  bigText: 'Upcoming Flights',
                  smallText: 'View all',
                   func: () => Navigator.pushNamed(context, AppRoutes.allTickets),

                ),
          SizedBox(height: 25,),
          SearchBoxes(),

        ],
      ),
    );
  }
}