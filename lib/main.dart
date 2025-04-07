import 'package:flutter/material.dart';
import 'package:ticket_app/core/base.dart';
import 'package:ticket_app/core/utils/app_routes.dart';
import 'package:ticket_app/screens/Profile/edit_profile.dart';
import 'package:ticket_app/screens/Profile/get_more_miles.dart';
import 'package:ticket_app/screens/Profile/view_miles.dart';
import 'package:ticket_app/screens/home/all_hotels.dart';
import 'package:ticket_app/screens/home/all_tickets.dart';
import 'package:ticket_app/screens/home/hotel_detail.dart';
import 'package:ticket_app/screens/ticket/ticket_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      routes: {
        AppRoutes.homePage: (context) => BottomNavBar(),
        AppRoutes.allTickets: (context) => AllTickets(),
        AppRoutes.ticketScreen: (context) => TicketScreen(),
        AppRoutes.allHotels:(context) => AllHotels(),
        AppRoutes.hotelDetail:(context) => HotelDetail(),
        AppRoutes.getMoreMiles:(context) => GetMoreMiles(),
        AppRoutes.viewMiles:(context) => ViewMiles(),
        AppRoutes.editProfile:(context) => EditProfile(
          name: 'Karanja F',
          email: 'frasiahnyambura22@gmail.com',
          profilePictureUrl: 'assets/images/frasiah.jpg',
          memberNumber: '123456789',
          milesCollected: '192802',
          cardStatus: 'Active',
          passportInfo: 'XXXXXXXX',
          flightPreferences: 'Window seat, aisle access',
        ),
        
        },
    );
  }
}

