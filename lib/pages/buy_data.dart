import 'package:flutter/material.dart';

class BuyData extends StatefulWidget {
  @override
  _BuyDataScreenState createState() => new _BuyDataScreenState();
}

class _BuyDataScreenState extends State<BuyData> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Buy Data'),
      ),
      body: new Center(
        child: new Text('Buy Data',
          style: new TextStyle(
            fontSize: 25.0
          ),
        ),
      ),
    );
  }
}