import 'package:flutter/material.dart';

import 'package:vestimate/components/bottom_navigator.dart';
import 'package:vestimate/components/grid_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 100,
        title: Center(child: Image.asset('lib/assets/vestimate_logo.png')),
        backgroundColor: Colors.transparent,
      ),
      bottomNavigationBar: MyBottomNavBar(),
      body: Container(
        color: Colors.grey[300],
        margin: const EdgeInsets.symmetric(horizontal: 16),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16, top: 16),
                child: Text(
                  'Choose your area',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[700]),
                ),
              ),
              Expanded(
                child: CustomGridView(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
