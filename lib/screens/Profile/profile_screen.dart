import 'package:flutter/material.dart';
import 'package:ticket_app/core/styles/app_styles.dart';
import 'package:ticket_app/core/utils/app_routes.dart';
import 'package:ticket_app/screens/Profile/edit_profile.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  String profileImageUrl = 'assets/images/frasiah.jpg';
  String name = 'Karanja F';
  String email = 'frasiahnyambura22@gmail.com';
  String memberClass = 'Gold Member';
  String memberNumber = '1234567890';
  String milesCollected = '192802';
  String cardStatus = 'Active';
  String passportInfo = 'XXXXXXXX';
  String flightPreferences = 'Window seat, aisle access';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        actions: [
          IconButton(
            icon: Icon(Icons.edit, color: AppStyles.ticketBlue),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => EditProfile(
                    name: name,
                    email: email,
                    profilePictureUrl: profileImageUrl,
                    memberNumber: memberNumber,
                    milesCollected: milesCollected,
                    cardStatus: cardStatus,
                    passportInfo: passportInfo,
                    flightPreferences: flightPreferences,
                  ),
                ),
              ).then((result) {
                if (result != null) {
                  setState(() {
                    name = result['name'];
                    email = result['email'];
                    profileImageUrl = result['profilePictureUrl'];
                    memberNumber = result['memberNumber'];
                    milesCollected = result['milesCollected'];
                    cardStatus = result['cardStatus'];  
                    passportInfo = result['passportInfo'];
                    flightPreferences = result['flightPreferences'];
                  });
                }
              });
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            // Profile Picture with Camera Icon
            Container(
              alignment: Alignment.center,
              child: 
                CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage(profileImageUrl),
                ),
              
            ),
            SizedBox(height: 16),

            // Name
            Text(
              name,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),

            // Email
            Text(
              email,
              style: TextStyle(fontSize: 16, color: Colors.grey[600]),
            ),
            SizedBox(height: 8),

            // Member Status
            Text(
              memberClass,
              style: TextStyle(fontSize: 16, color: Colors.grey[600]),
            ),
            SizedBox(height: 24),

            // Detailed Information
            _buildInfoTile('Member Number', memberNumber),
            _buildInfoTile('Miles Collected', milesCollected, onTap: () {
              Navigator.pushNamed(context, AppRoutes.viewMiles);
            }),
            _buildInfoTile('Card Status', cardStatus),
            _buildInfoTile('Passport Information', passportInfo),
            _buildInfoTile('Flight Preferences', flightPreferences),
          ],
        ),
      ),
    );
  }

  // Helper function to build info tiles
  Widget _buildInfoTile(String title, String value, {VoidCallback? onTap}) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(value),
        onTap: onTap,
        trailing: onTap != null ? Icon(Icons.arrow_forward_ios) : null,
      ),
    );
  }
}