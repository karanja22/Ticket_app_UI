import 'package:flutter/material.dart';

class TicketStackCircles extends StatelessWidget {
  final bool? pos;
  const TicketStackCircles({super.key, this.pos});

  @override
  Widget build(BuildContext context) {
    return Positioned(
            left: pos==true?22:null,
            right: pos==true?null:22,
            top: 270,
            child: Container(
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(width: 2, ),
              ),
              child: CircleAvatar(
                maxRadius: 4,
                backgroundColor: Colors.black,
              ),
            ),);
  }
}