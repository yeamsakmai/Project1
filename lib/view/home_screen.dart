import 'package:flutter/material.dart';

import '../widget/body.dart';
import '../widget/header.dart';

class HomeScreen extends StatefulWidget {
   HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 226, 225, 225),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header(),
            SizedBox(
              height: 15,
            ),
            Body(),
          ],
        ),
      ),
    );
  }
}
