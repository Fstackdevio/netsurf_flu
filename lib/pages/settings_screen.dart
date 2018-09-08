import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => new _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: new Center(
        child: new Text('Settings Page',
          style: new TextStyle(
            fontSize: 25.0
          ),
        ),
      ),
    );
  }
}