import 'package:flutter/material.dart';
import 'package:ticket_app/core/widgets/ticket_text.dart';

class TicketRedLayout extends StatelessWidget {
  final String topText;
  final String bottomText;
  final CrossAxisAlignment alignment;
  final bool? isColor;
  const TicketRedLayout({super.key, required this.topText, required this.bottomText, required this.alignment, this.isColor});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        TicketInitials(initials: topText,isColor: isColor,),
        SizedBox(height: 5),
        TicketFullname(fullname: bottomText,isColor: isColor,),
      ],
    );
  }
}
