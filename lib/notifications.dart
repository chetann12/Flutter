import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class NotificationsScreen extends StatelessWidget {
  Future<void> _launchURL(BuildContext context, String url) async {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Failed to open URL"),
          action: SnackBarAction(
            label: "Dismiss",
            onPressed: () =>
                ScaffoldMessenger.of(context).hideCurrentSnackBar(),
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notifications"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue.shade50, Colors.blue.shade100],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: ListView(
          padding: EdgeInsets.all(16),
          children: [
            _buildNotificationCard(
              context,
              title: "Tech Fest 2025",
              date: "March 20, 2025",
              url: "https://www.mcadepartment.com/events",
            ),
            _buildNotificationCard(
              context,
              title: "Guest Lecture: AI & ML",
              date: "April 5, 2025",
              url: "https://www.mcadepartment.com/lectures",
            ),
            _buildNotificationCard(
              context,
              title: "Coding Hackathon",
              date: "April 15, 2025",
              url: "https://www.mcadepartment.com/hackathon",
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNotificationCard(
    BuildContext context, {
    required String title,
    required String date,
    required String url,
  }) {
    return Card(
      elevation: 6,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      margin: EdgeInsets.symmetric(vertical: 12),
      child: ListTile(
        contentPadding: EdgeInsets.all(16),
        title: Text(
          title,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.blueGrey,
          ),
        ),
        subtitle: Text(
          date,
          style: TextStyle(fontSize: 16, color: Colors.grey),
        ),
        trailing: Icon(Icons.link, color: Colors.blueAccent),
        onTap: () => _launchURL(context, url),
      ),
    );
  }
}
