import 'package:flutter/material.dart';
import 'package:ticket_app/core/styles/app_styles.dart';

class TicketInitials extends StatelessWidget {
  final String initials;
  final TextAlign align;
  final bool? isColor;
  const TicketInitials({
    super.key,
    required this.initials,
    this.align = TextAlign.start,
    this.isColor,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      initials,
      style:
          isColor == null
              ? AppStyles.headline3.copyWith(color: AppStyles.secColor)
              : AppStyles.headline3,
    );
  }
}

class TicketFullname extends StatelessWidget {
  final String fullname;
  final TextAlign align;
  final bool? isColor;

  const TicketFullname({
    super.key,
    required this.fullname,
    this.align = TextAlign.start,
    this.isColor,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      fullname,
      textAlign: align,
      style:
          isColor == null
              ? AppStyles.headline4.copyWith(color: AppStyles.secColor)
              : AppStyles.headline4,
    );
  }
}
