import 'package:flutter/material.dart';
import 'package:ticket_app/core/styles/app_styles.dart';

class AppTicketTab extends StatelessWidget {
  final String firstTab;
  final String secondTab;
  const AppTicketTab({super.key, required this.firstTab, required this.secondTab});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.44,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: AppStyles.tabColor,
      ),
      child: Row(
        children: [
          AppTabs(tabText:firstTab,tabColor: true,),
          AppTabs(tabText: secondTab,tabBorder: true,)
        ],
      ),
    );
  }
}

class AppTabs extends StatelessWidget {
  final String tabText;
  final bool tabBorder;
  final bool tabColor;
  const AppTabs({super.key, required this.tabText, this.tabBorder = false, this.tabColor=false});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(vertical: 7),
      width: size.width * 0.44,
      decoration: BoxDecoration(
        borderRadius:
            tabBorder == false
                ? BorderRadius.horizontal(left: Radius.circular(50))
                : BorderRadius.horizontal(right: Radius.circular(50)),
        color:tabColor==true?AppStyles.secColor: Colors.transparent,
      ),
      child: Center(child: Text(tabText)),
    );
  }
}
