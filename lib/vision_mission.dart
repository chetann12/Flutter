import 'package:flutter/material.dart';

class VisionMissionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(8.0),
        children: [
          MissionCard(
              title: "Vision",
              content:
                  "To be a center of excellence in Computer Applications."),
          MissionCard(
              title: "Mission",
              content:
                  "Empower students with knowledge and skills in software development."),
        ],
      ),
    );
  }
}

class MissionCard extends StatelessWidget {
  final String title, content;
  MissionCard({required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ExpansionTile(
        title: Text(title),
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(content),
          ),
        ],
      ),
    );
  }
}
