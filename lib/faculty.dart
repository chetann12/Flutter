import 'package:flutter/material.dart';

class FacultyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Faculty Members"),
        backgroundColor: const Color.fromARGB(255, 184, 221, 240),
      ),
      body: ListView(
        padding: EdgeInsets.all(8.0),
        children: [
          FacultyCard(
            name: "Prof. Sakina Salmani",
            position: "Assistant Professor",
            subject: "Web Technology",
            experience: "8+ years",
            additionalSubjects: ["Cyber Security", "Cloud Computing"],
            imagePath: "SS.png",
          ),
          FacultyCard(
            name: "Prof. Harshil Kanakia",
            position: "Assistant Professor",
            subject: "AI & ML",
            experience: "10+ years",
            additionalSubjects: ["Data Science", "Deep Learning"],
            imagePath: "HK.png",
          ),
          FacultyCard(
            name: "Prof. Nikhita Mangaonkar",
            position: "Assistant Professor",
            subject: "Software Engineering",
            experience: "8+ years",
            additionalSubjects: [
              "Computer Networking",
              "Software Testing & Quality Assurance"
            ],
            imagePath: "NM.jpg",
          ),
          FacultyCard(
            name: "Prof. Pallavi Thakur",
            position: "Assistant Professor",
            subject: "Machine Learning",
            experience: "8+ years",
            additionalSubjects: ["Web Technology", "Data Science"],
            imagePath: "PT.png",
          ),
          FacultyCard(
            name: "Prof. Aarti Karande",
            position: "Assistant Professor",
            subject: "Artifical Intelligence",
            experience: "8+ years",
            additionalSubjects: ["Advanced Java", "Business Intelligence"],
            imagePath: "aarti.png",
          ),
        ],
      ),
    );
  }
}

class FacultyCard extends StatelessWidget {
  final String name, position, subject, experience, imagePath;
  final List<String> additionalSubjects;

  FacultyCard({
    required this.name,
    required this.position,
    required this.subject,
    required this.experience,
    required this.additionalSubjects,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
      child: ExpansionTile(
        leading: CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage(imagePath), // Faculty image
        ),
        title: Text(name, style: TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(position, style: TextStyle(color: Colors.grey[700])),
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("📚 Subject: $subject",
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                SizedBox(height: 5),
                Text("💼 Experience: $experience",
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                SizedBox(height: 5),
                Text("📖 Additional Subjects:",
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                ...additionalSubjects.map(
                  (sub) => Text("• $sub", style: TextStyle(fontSize: 15)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
