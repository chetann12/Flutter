import 'package:flutter/material.dart';
import 'splash_screen.dart';

void main() {
  runApp(MCAApp());
}

class MCAApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MCA-SPIT',
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      home: SplashScreen(),
    );
  }
}
