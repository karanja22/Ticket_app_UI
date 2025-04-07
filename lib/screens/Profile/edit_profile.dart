import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:ticket_app/core/styles/app_styles.dart';

class EditProfile extends StatefulWidget {
  final String name;
  final String email;
  final String profilePictureUrl;
  final String memberNumber;
  final String milesCollected;
  final String cardStatus;
  final String passportInfo;
  final String flightPreferences;

  const EditProfile({
    super.key,
    required this.name,
    required this.email,
    required this.profilePictureUrl,
    required this.memberNumber,
    required this.milesCollected,
    required this.cardStatus,
    required this.passportInfo,
    required this.flightPreferences,
  });

  @override
  // ignore: library_private_types_in_public_api
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  late TextEditingController _nameController;
  late TextEditingController _emailController;
  late TextEditingController _memberNumberController;
  late TextEditingController _milesCollectedController;
  late TextEditingController _cardStatusController;
  late TextEditingController _passportInfoController;
  late TextEditingController _flightPreferencesController;
  late String _profilePictureUrl;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController(text: widget.name);
    _emailController = TextEditingController(text: widget.email);
    _profilePictureUrl = widget.profilePictureUrl;
    _memberNumberController = TextEditingController(text: widget.memberNumber);
    _milesCollectedController = TextEditingController(text: widget.milesCollected);
    _cardStatusController = TextEditingController(text: widget.cardStatus);
    _passportInfoController = TextEditingController(text: widget.passportInfo);
    _flightPreferencesController = TextEditingController(text: widget.flightPreferences);
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _memberNumberController.dispose();
    _milesCollectedController.dispose();
    _cardStatusController.dispose();
    _passportInfoController.dispose();
    _flightPreferencesController.dispose();
    super.dispose();
  }

  void _updateProfile() {
    Navigator.pop(context, {
      'name': _nameController.text,
      'email': _emailController.text,
      'profilePictureUrl': _profilePictureUrl,
      'memberNumber': _memberNumberController.text,
      'milesCollected': _milesCollectedController.text,
      'cardStatus': _cardStatusController.text,
      'passportInfo': _passportInfoController.text,
      'flightPreferences': _flightPreferencesController.text,
    });
  }

    Future<void> _pickImage() async {
  final ImagePicker picker = ImagePicker();
  final XFile? image = await picker.pickImage(source: ImageSource.gallery);
  if (image != null) {
    setState(() {
      _profilePictureUrl = image.path; // Update to the selected image path
    });
  }
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit Profile"),
        actions: [
          IconButton(
            icon: Icon(FluentSystemIcons.ic_fluent_save_filled, color: AppStyles.ticketBlue),
            onPressed: _updateProfile,
          ),
        ],
      ),
      backgroundColor: AppStyles.bgcolor,
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Profile Picture with Camera Icon
            Stack(
            alignment: Alignment.bottomRight,
            children: [
              CircleAvatar(
                radius: 60,
                backgroundImage: _profilePictureUrl.isNotEmpty
                    ? FileImage(File(_profilePictureUrl))
                    : null,
                child: _profilePictureUrl.isEmpty
                    ? Icon(Icons.person, size: 60, color: AppStyles.ticketBlue)
                    : null,
              ),
              IconButton(
                icon: Icon(Icons.camera_alt, color: AppStyles.ticketBlue),
                onPressed: _pickImage,
              ),
            ],
          ),
            SizedBox(height: 16),

            // Name Field
            TextField(
              controller: _nameController,
              decoration: InputDecoration(labelText: "Name"),
            ),
            SizedBox(height: 16),

            // Email Field
            TextField(
              controller: _emailController,
              decoration: InputDecoration(labelText: "Email"),
            ),
            SizedBox(height: 16),

            // Member Number Field
            TextField(
              controller: _memberNumberController,
              decoration: InputDecoration(labelText: "Member Number"),
            ),
            SizedBox(height: 16),

            // Miles Collected Field
            TextField(
              controller: _milesCollectedController,
              decoration: InputDecoration(labelText: "Miles Collected"),
            ),
            SizedBox(height: 16),

            // Card Status Field
            TextField(
              controller: _cardStatusController,
              decoration: InputDecoration(labelText: "Card Status"),
            ),
            SizedBox(height: 16),

            // Passport Information Field
            TextField(
              controller: _passportInfoController,
              decoration: InputDecoration(labelText: "Passport Information"),
            ),
            SizedBox(height: 16),

            // Flight Preferences Field
            TextField(
              controller: _flightPreferencesController,
              decoration: InputDecoration(labelText: "Flight Preferences"),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}