import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      padding: EdgeInsets.only(bottom: 20),
      child: SafeArea(
        child: Column(
          children: [
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Color.fromARGB(255, 121, 255, 132),
                radius: 23,
                backgroundImage: AssetImage('assets/image/download (2).png'),
              ),
              title: Text(
                'Delivery address',
                textAlign: TextAlign.center,
              ),
              subtitle: Text(
                '92 High Steet, London',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
              trailing: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: const Color.fromARGB(255, 214, 214, 214),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Icon(
                    Icons.notifications_outlined,
                    color: Colors.black,
                    size: 28,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
              child: Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromARGB(255, 230, 227, 227),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.search,
                      size: 28,
                    ),
                    Text(
                      'Search the whole shop',
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
              child: Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      stops: [
                        0.1,
                        0.4,
                        0.9,
                      ],
                      colors: [
                        Color.fromARGB(255, 209, 245, 237),
                        Color.fromARGB(255, 144, 247, 221),
                        Color.fromARGB(255, 236, 235, 235),
                      ],
                    )),
                alignment: Alignment.center,
                child: Text(
                  'Shop now with delivery at 50% discount',
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
