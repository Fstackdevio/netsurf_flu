import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => new _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: new Center(
        child: new Text('User Account',
          style: new TextStyle(
            fontSize: 25.0
          ),
        ),
      ),
    );
  }
}