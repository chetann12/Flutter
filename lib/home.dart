import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeScreen extends StatelessWidget {
  final List<String> imagePaths = [
    'home_mca.jpg', // Replace with actual image assets
    'home_mca2.jpg',
    'home_mca3.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Welcome Text
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Welcome to MCA Department of Sardar Patel Institute of Technology",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Right from its first year in 2009, S.P.I.T. has been one of the most sought-after colleges by students for MCA and is renowned for its ongoing courses. Even though it started in 2009, it has managed to excel quickly, and with the highest cutoff this year, it has shown growth among students all over.",
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),

            SizedBox(height: 10),

            // Image Carousel
            CarouselSlider(
              options: CarouselOptions(
                height: 350,
                autoPlay: true,
                enlargeCenterPage: true,
                aspectRatio: 16 / 9,
                viewportFraction: 0.8,
              ),
              items: imagePaths.map((imagePath) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(imagePath,
                      fit: BoxFit.cover, width: double.infinity),
                );
              }).toList(),
            ),

            SizedBox(height: 30),

            // Alumni Testimonials
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Alumni Testimonials",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 10),
                  Text(
                    "The MCA program in S.P.I.T. is an extensive program focusing on important aspects necessary to prepare students to become mature IT professionals specializing in software engineering, application development, data science, testing, or information security.",
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "The 4th semester academia for mandatory internship is a wonderful path laid out for students to actually gauge their interest and capability to make better career decisions later.",
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
