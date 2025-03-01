import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
        actions: [
          IconButton(
            icon: Icon(Icons.add), // "+" button
            onPressed: () {
              _showPopupMenu(context); // Open the popup menu
            },
          ),
        ],
      ),
      body: Center(
        child: Text(
          'Welcome to the Dashboard!',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  void _showPopupMenu(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        return Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min, // Only take needed space
            children: [
              _buildPopupOption(context, Icons.mood, "How Kid feels right now", () {
                // Handle selection
                Navigator.pop(context);
              }),
              _buildPopupOption(context, Icons.camera, "Record an emotion from Image", () {
                // Handle selection
                Navigator.pop(context);
              }),
              _buildPopupOption(context, Icons.self_improvement, "Kid Self Help", () {
                // Handle selection
                Navigator.pop(context);
              }),
            ],
          ),
        );
      },
    );
  }

  Widget _buildPopupOption(BuildContext context, IconData icon, String text, VoidCallback onTap) {
    return ListTile(
      leading: Icon(icon, color: Colors.lightBlue),
      title: Text(text, style: TextStyle(fontSize: 16)),
      onTap: onTap,
    );
  }
}