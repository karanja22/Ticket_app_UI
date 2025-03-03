import 'package:flutter/material.dart';
import 'package:ticket_app/core/styles/app_styles.dart';
import 'package:ticket_app/core/utils/app_routes.dart';
import 'package:ticket_app/core/utils/at_json.dart';
import 'package:ticket_app/core/widgets/ticket_view.dart';

class AllTickets extends StatelessWidget {
  const AllTickets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgcolor,
      appBar: AppBar(
        backgroundColor: AppStyles.bgcolor,
        title: Center(child: Text("All Tickets", ))),
      body: ListView(
        children: [
          SingleChildScrollView(
            child: Column(
              children:
                  ticketList
                      .map(
                        (singleTicket) => GestureDetector(
                          onTap: () {
                            var index = ticketList.indexOf(singleTicket);
                            Navigator.pushNamed(
                              context,
                              AppRoutes.ticketScreen,
                              arguments: {'index': index},
                            );
                          },
                          child: Container(
                            margin: EdgeInsets.only(bottom: 20),
                            child: Ticketview(
                              ticket: singleTicket,
                              wholeScreen: true,
                            ),
                          ),
                        ),
                      )
                      .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
