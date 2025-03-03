import 'package:flutter/material.dart';
import 'package:ticket_app/core/styles/app_styles.dart';

class FindTicket extends StatelessWidget {
  const FindTicket({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 18,horizontal: 18),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color:AppStyles.findTicket,
      ),
      child: Center(child: Text("Find Ticket",style: AppStyles.textStyle.copyWith(color: AppStyles.secColor),)),
    );
  }
}