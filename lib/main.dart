import 'package:expense_tracker_app/features/auth/presentation/screen/login_screen.dart';
import 'package:expense_tracker_app/features/auth/presentation/screen/register_screen.dart';
import 'package:expense_tracker_app/features/home/presentation/home_page.dart';
import 'package:expense_tracker_app/features/splash_screen/presentation/screen/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Expense Tracker',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: HomePage(),
    );
  }
}
