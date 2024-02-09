import 'package:flutter/material.dart';

import 'categories_icon.dart';
import 'flashsale_icon.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      padding: EdgeInsets.only(bottom: 20),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 10),
            child: Row(
              children: [
                Text(
                  'Categaries',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                ),
                SizedBox(
                  width: 200,
                ),
                Text(
                  'See all',
                  style: TextStyle(fontSize: 17),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: const Color.fromARGB(255, 223, 222, 222),
                    ),
                    child: Icon(Icons.chevron_right_sharp),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 20),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Category(
                      img: 'assets/image/s-l1600-removebg-preview.png',
                      text: 'Iphone 11'),
                  SizedBox(
                    width: 30,
                  ),
                  Category(
                      img: 'assets/image/pngimg.com - monitor_PNG101653.png',
                      text: 'Monitor'),
                  SizedBox(
                    width: 30,
                  ),
                  Category(
                      img:
                          'assets/image/denver-led-3283de-1-removebg-preview.png',
                      text: 'TV'),
                  SizedBox(
                    width: 30,
                  ),
                  Category(
                      img:
                          'assets/image/the_camera_is_black_on_a_transparent_background__by_prussiaart_ddgzrfl-pre.png',
                      text: 'Camera'),
                  SizedBox(
                    width: 30,
                  ),
                  Category(
                      img:
                          'assets/image/the_camera_is_black_on_a_transparent_background__by_prussiaart_ddgzrfl-pre.png',
                      text: 'Speaker'),
                  SizedBox(
                    width: 30,
                  ),
                  Category(img: '', text: ''),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25, left: 10),
            child: Row(
              children: [
                Text(
                  'Flash Sale',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 108, 255, 79),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Text(
                      '11:39:44',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 125,
                ),
                Text(
                  'See all',
                  style: TextStyle(fontSize: 17),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: const Color.fromARGB(255, 223, 222, 222),
                    ),
                    child: Icon(Icons.chevron_right_sharp),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10, top: 20),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, "FlashsaleClick");
                    },
                    child: FlashSale(
                      photo:
                          'assets/image/the_camera_is_black_on_a_transparent_background__by_prussiaart_ddgzrfl-pre.png',
                      name: 'The camera black with\n high perform full HD',
                      oldPrice: '\$599.99',
                      newPrice: '\$399.99',
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  FlashSale(
                    photo: 'assets/image/s-l1600-removebg-preview.png',
                    name: 'Apple Iphone 11 Pro\n 64GB Red',
                    oldPrice: '\$799.99',
                    newPrice: '\$199.99',
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  FlashSale(
                    photo: 'assets/image/pngimg.com - monitor_PNG101653.png',
                    name: 'Monitor 32 inh 165hz\n Screen 2k ',
                    oldPrice: '\$349.99',
                    newPrice: '\$149.99',
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  FlashSale(
                    photo: '',
                    name: '',
                    oldPrice: '',
                    newPrice: '',
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
