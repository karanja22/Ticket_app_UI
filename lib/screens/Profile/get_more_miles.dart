import 'package:flutter/material.dart';
import 'package:ticket_app/core/styles/app_styles.dart';
import 'package:fluentui_icons/fluentui_icons.dart';

class GetMoreMiles extends StatelessWidget {
  const GetMoreMiles({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgcolor,
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Boost Your Miles Balance!",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              _buildListTile(
                icon: FluentSystemIcons.ic_fluent_airplane_filled,
                title: "Fly with Partner Airlines",
                subtitle: "Book flights and earn miles for every trip.",
              ),
              _buildListTile(
                icon: FluentSystemIcons.ic_fluent_building_filled,
                title: "Stay at Partner Hotels",
                subtitle: "Earn up to 3x miles per night at selected hotels.",
              ),
              _buildListTile(
                icon: FluentSystemIcons.ic_fluent_food_filled,
                title: "Dine at Partner Restaurants",
                subtitle: "Earn 1 mile per \$1 spent at select locations.",
              ),
              _buildListTile(
                icon: FluentSystemIcons.ic_fluent_contact_card_filled,
                title: "Use a Co-branded Credit Card",
                subtitle: "Get bonus miles when you pay with partner cards.",
              ),
              _buildListTile(
                icon:FluentSystemIcons.ic_fluent_store_filled,
                title: "Shop Online with Partner Stores",
                subtitle: "Earn up to 5 miles per \$1 spent at online retailers.",
              ),
              _buildListTile(
                icon: FluentSystemIcons.ic_fluent_gift_filled,
                title: "Take Advantage of Promotions",
                subtitle: "Look out for double miles days and special deals!",
              ),
              SizedBox(height: 20),
              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppStyles.primaryColor,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                    textStyle: TextStyle(fontSize: 18),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("Back", style: AppStyles.textStyle,),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildListTile({required IconData icon, required String title, required String subtitle}) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      margin: EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        leading: Icon(icon, color: AppStyles.primaryColor, size: 27),
        title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(subtitle),
      ),
    );
  }
}
    