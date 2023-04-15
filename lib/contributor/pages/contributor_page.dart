import 'package:blood_donation_app/contributor/pages/QR.dart';
import 'package:blood_donation_app/contributor/pages/blood_history.dart';
import 'package:blood_donation_app/contributor/pages/map.dart';
import 'package:blood_donation_app/contributor/pages/profile.dart';
import 'package:flutter/material.dart';

class ContributorPage extends StatefulWidget {
  const ContributorPage({super.key});

  @override
  State<ContributorPage> createState() => _ContributorPageState();
}

class _ContributorPageState extends State<ContributorPage> {
  int pageIndex = 0;
  final List<Widget> pages = [
    const ProfileScreen(),
    const MapScreen(),
    const QR(),
    const BloodHistory(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Giọt Hồng"),
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            /** Do something */
          },
        ),
      ),
      body: pages[pageIndex],
      bottomNavigationBar: buildMyNavBar(context),
    );
  }

  Container buildMyNavBar(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 0;
              });
            },
            icon: pageIndex == 0
                ? const Icon(
                    Icons.people_alt_rounded,
                    color: Colors.white,
                    size: 35,
                  )
                : const Icon(
                    Icons.people_alt_outlined,
                    color: Colors.white,
                    size: 35,
                  ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 1;
              });
            },
            icon: pageIndex == 1
                ? const Icon(
                    Icons.map_rounded,
                    color: Colors.white,
                    size: 35,
                  )
                : const Icon(
                    Icons.map_outlined,
                    color: Colors.white,
                    size: 35,
                  ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 2;
              });
            },
            icon: pageIndex == 2
                ? const Icon(
                    Icons.qr_code_rounded,
                    color: Colors.white,
                    size: 35,
                  )
                : const Icon(
                    Icons.qr_code_outlined,
                    color: Colors.white,
                    size: 35,
                  ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 3;
              });
            },
            icon: pageIndex == 3
                ? const Icon(
                    Icons.browse_gallery_rounded,
                    color: Colors.white,
                    size: 35,
                  )
                : const Icon(
                    Icons.browse_gallery_outlined,
                    color: Colors.white,
                    size: 35,
                  ),
          ),
        ],
      ),
    );
  }
}
