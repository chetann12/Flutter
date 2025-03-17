import 'package:flutter/material.dart';
import 'home.dart';
import 'faculty.dart';
import 'vision_mission.dart';
import 'notifications.dart';
import 'webview.dart';
import 'feedback.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    HomeScreen(),
    FacultyScreen(),
    VisionMissionScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void openDrawer() {
    Scaffold.of(context).openDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("MCA-SPIT")),
      drawer: SideNavigationBar(),
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.blueGrey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Faculty'),
          BottomNavigationBarItem(
              icon: Icon(Icons.school), label: 'Vision & Mission'),
        ],
      ),
    );
  }
}

class SideNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.blueGrey),
            child: Text("More Options",
                style: TextStyle(color: Colors.white, fontSize: 24)),
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text("Notifications"),
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => NotificationsScreen())),
          ),
          ListTile(
            leading: Icon(Icons.language),
            title: Text("WebView"),
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => WebViewScreen())),
          ),
          ListTile(
            leading: Icon(Icons.feedback),
            title: Text("Feedback"),
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => FeedbackScreen())),
          ),
        ],
      ),
    );
  }
}
