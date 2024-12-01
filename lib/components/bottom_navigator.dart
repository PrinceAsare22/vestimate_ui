import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavBar extends StatelessWidget {
  const MyBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const GNav(
        color: Colors.grey,
        activeColor: Color.fromRGBO(95, 92, 233, 1),
        tabs: [
          GButton(
            icon: IconlyLight.home,
          ),
          GButton(
            icon: IconlyLight.paper,
          ),
          GButton(
            icon: IconlyLight.chat,
          ),
          GButton(
            icon: IconlyLight.search,
          ),
          GButton(
            icon: IconlyLight.profile,
          ),
        ],
      ),
    );
  }
}
