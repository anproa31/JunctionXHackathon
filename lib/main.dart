                                      
import 'package:blood_donation_app/administrator/pages/event_creation.dart';
import 'package:blood_donation_app/contributor/pages/contributor_page.dart';
import 'package:blood_donation_app/contributor/pages/sign_in.dart';
import 'package:blood_donation_app/contributor/pages/sign_up.dart';
import 'package:blood_donation_app/contributor/pages/starter.dart';
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
      // home: const ContributorPage(),
      // home: const Notifications(),
      home: const EventCreationScreen(),
    );
  }
}
