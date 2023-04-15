import 'package:blood_donation_app/components/Notifications.dart';
import 'package:blood_donation_app/pages/user_page.dart';
import 'package:blood_donation_app/pages/sign_in.dart';
import 'package:blood_donation_app/pages/sign_up.dart';
import 'package:blood_donation_app/pages/starter.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Blood Donation App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      // home:  const HomePage(),
      // home: const UserPage(),
      home: const Notifications(),
    );
  }
}
