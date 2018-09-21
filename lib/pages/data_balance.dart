import 'package:flutter/material.dart';

class DataBalance extends StatefulWidget {
  @override
  _DataBalanceScreenState createState() => new _DataBalanceScreenState();
}

class _DataBalanceScreenState extends State<DataBalance> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Data Balance'),
      ),
      body: new Center(
        child: new Text('Check Your Data Balance',
          style: new TextStyle(
            fontSize: 25.0
          ),
        ),
      ),
    );
  }
}