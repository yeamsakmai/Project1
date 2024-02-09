import 'package:flutter/material.dart';

Widget Category({required String img, required String text}) {
  return Column(
    children: [
      Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 226, 225, 225),
          borderRadius: BorderRadius.circular(50),
        ),
        child: Image(
          image: AssetImage(img),
          // fit: BoxFit.cover,
        ),
      ),
      SizedBox(
        height: 10,
      ),
      Text(
        '$text',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    ],
  );
}
