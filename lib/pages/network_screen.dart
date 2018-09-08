import 'package:flutter/material.dart';

class NetworkScreen extends StatefulWidget {
  @override
  _NetworkScreenState createState() => new _NetworkScreenState();
}

class _NetworkScreenState extends State<NetworkScreen> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Network'),
      ),
      body: new Center(
        child: new Text('Network Strength',
          style: new TextStyle(
            fontSize: 25.0
          ),
        ),
      ),
    );
  }
}