import 'package:flutter/material.dart';

class BloodHistory extends StatefulWidget {
  const BloodHistory({super.key});

  @override
  State<BloodHistory> createState() => _BloodHistoryState();
}

class _BloodHistoryState extends State<BloodHistory> {
  @override
  Widget build(BuildContext context) {
        return const Center(
      child: Text('Blood History'),
    );
  }
}