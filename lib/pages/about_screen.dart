import 'package:flutter/material.dart';

class AboutScreen extends StatefulWidget {
  @override
  _AboutScreenState createState() => new _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('About App'),
      ),
      body: new Center(
        child: new Text('About App',
          style: new TextStyle(
            fontSize: 25.0
          ),
        ),
      ),
    );
  }
}