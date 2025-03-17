import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class FeedbackScreen extends StatefulWidget {
  @override
  _FeedbackScreenState createState() => _FeedbackScreenState();
}

class _FeedbackScreenState extends State<FeedbackScreen> {
  double rating = 3.0;
  TextEditingController feedbackController = TextEditingController();

  void _submitFeedback() {
    print("Feedback: ${feedbackController.text}, Rating: $rating");
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text("Feedback submitted!")));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            RatingBar.builder(
              initialRating: 3,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemBuilder: (context, _) =>
                  Icon(Icons.star, color: Colors.amber),
              onRatingUpdate: (rating) => setState(() => this.rating = rating),
            ),
            TextField(
              controller: feedbackController,
              decoration: InputDecoration(labelText: "Enter your feedback"),
            ),
            ElevatedButton(onPressed: _submitFeedback, child: Text("Submit")),
          ],
        ),
      ),
    );
  }
}
