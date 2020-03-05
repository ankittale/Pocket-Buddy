import 'package:flutter/material.dart';

import 'screen/home_screen.dart';

void main() => runApp(BudgetApp());

class BudgetApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pocket Buddy',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.grey[20],
        primaryColor: Colors.green,
      ),
      home: HomeScreen(),
    );
  }
}