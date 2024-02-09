import 'package:flutter/material.dart';

Widget FlashSale({
  required String photo,
  required String name,
  required String oldPrice,
  required String newPrice,
}) {
  return Row(
    children: [
      Container(
        width: 160,
        height: 300,
        color: Color.fromARGB(255, 255, 255, 255),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: 150,
                  height: 170,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromARGB(255, 235, 234, 234),
                  ),
                  child: Image(image: AssetImage(photo)),
                ),
                Positioned(
                  right: 10,
                  top: 10,
                  child: Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: const Color.fromARGB(255, 255, 255, 255),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 3,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Icon(Icons.favorite_border_outlined),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              '$name',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text.rich(
                  TextSpan(
                    children: <TextSpan>[
                      new TextSpan(
                        text: '$newPrice',
                        style: new TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                            color: Colors.red),
                      ),
                      new TextSpan(
                          text: '$oldPrice',
                          style: TextStyle(
                            decoration: TextDecoration.lineThrough,
                          )),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    ],
  );
}
