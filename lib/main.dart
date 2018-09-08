import 'package:flutter/material.dart';
import 'package:netsurf/pages/login_screen.dart';


void main() => runApp(MaterialApp(
  theme: ThemeData(primaryColor: Colors.greenAccent, accentColor: Colors.green),
  debugShowCheckedModeBanner: false,
  home: LoginScreen(),
));