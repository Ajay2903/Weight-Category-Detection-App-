import 'package:flutter/material.dart';
import 'package:bmical/screens/home.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMI Calculator',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue,
                    visualDensity: VisualDensity.adaptivePlatformDensity,),
      home: HomeScreen(),);

  }
}

