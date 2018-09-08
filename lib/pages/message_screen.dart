import 'package:flutter/material.dart';

class MessageScreen extends StatefulWidget {
  @override
  _MessageScreenState createState() => new _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Messages'),
      ),
      body: new Center(
        child: new Text('Messages',
          style: new TextStyle(
            fontSize: 25.0
          ),
        ),
      ),
    );
  }
}