import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class NotificationsScreen extends StatelessWidget {
  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ListTile(
            title: Text("Tech Fest 2025"),
            subtitle: Text("March 20, 2025"),
            trailing: Icon(Icons.link),
            onTap: () => _launchURL("https://www.mcadepartment.com/events"),
          ),
        ],
      ),
    );
  }
}
