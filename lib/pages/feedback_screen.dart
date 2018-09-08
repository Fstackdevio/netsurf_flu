import 'package:flutter/material.dart';

class FeedbackScreen extends StatefulWidget {
  @override
  _FeedbackScreenState createState() => new _FeedbackScreenState();
}

class _FeedbackScreenState extends State<FeedbackScreen> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Feedback'),
      ),
      body: new Center(
        child: new Text('Feedback Page',
          style: new TextStyle(
            fontSize: 25.0
          ),
        ),
      ),
    );
  }
}