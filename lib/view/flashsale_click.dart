import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class FlashsaleClick extends StatefulWidget {
  FlashsaleClick({super.key});

  @override
  State<FlashsaleClick> createState() => _FlashsaleClickState();
}

class _FlashsaleClickState extends State<FlashsaleClick> {
  int index = 0;

  final List myItem = [
    'assets/image/pngimg.com - monitor_PNG101653.png',
    'assets/image/s-l1600-removebg-preview.png',
    'assets/image/the_camera_is_black_on_a_transparent_background__by_prussiaart_ddgzrfl-pre.png',
    'assets/image/denver-led-3283de-1-removebg-preview.png',
    'assets/image/GUEST_700a8c05-7925-4054-aabb-d8540636705c-removebg-preview.png',
  ];

  int myIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 236, 236, 236),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 20),
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Color.fromARGB(255, 173, 168, 168),
                              blurRadius: 3,
                              offset: Offset(0, 3))
                        ]),
                    child: Icon(Icons.arrow_back_ios_new_outlined),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 230),
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Color.fromARGB(255, 173, 168, 168),
                              blurRadius: 3,
                              offset: Offset(0, 3))
                        ]),
                    child: Icon(
                      Icons.favorite_border_outlined,
                      color: Colors.red,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 20),
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Color.fromARGB(255, 173, 168, 168),
                              blurRadius: 3,
                              offset: Offset(0, 3))
                        ]),
                    child: Icon(Icons.notifications),
                  ),
                ),
              ],
            ),
            CarouselSlider.builder(
              itemCount: myItem.length,
              itemBuilder: (context, index, realIndex) {
                final image = myItem[index];
                return ClipRRect(
                  child: Image.asset(
                    image,
                    // fit: BoxFit.cover,
                    width: MediaQuery.of(context).size.width,
                  ),
                );
              },
              options: CarouselOptions(
                // height: MediaQuery.of(context).size.height * 0.25,
                viewportFraction: 1,
                autoPlay: true,
                aspectRatio: 2.0,
                autoPlayAnimationDuration: Duration(milliseconds: 500),
                enlargeCenterPage: true,
                onPageChanged: (index, reason) {
                  setState(() {
                    myIndex = index;
                  });
                },
              ),
            ),
            AnimatedSmoothIndicator(
              activeIndex: myIndex,
              count: myItem.length,
              effect: WormEffect(
                dotHeight: 10,
                dotWidth: 10,
                dotColor: const Color.fromARGB(255, 0, 0, 0),
                spacing: 10,
                activeDotColor: Color.fromARGB(255, 245, 113, 4),
                paintStyle: PaintingStyle.stroke,
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'PlayStation 4 PS4, Black',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Container(
                          width: 150,
                          height: 35,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black,
                                blurRadius: 2,
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Color.fromARGB(255, 255, 110, 13),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  '4.8',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  '117 reviews',
                                  style: TextStyle(fontSize: 14),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          width: 80,
                          height: 35,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black,
                                blurRadius: 2,
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.thumb_up_alt_outlined,
                                  color: Color.fromARGB(255, 2, 61, 255),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  '90%',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      width: double.infinity,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 224, 224, 224),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Row(
                          children: [
                            Text(
                              '\$600.00',
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'from \$30 per month',
                              style: TextStyle(fontSize: 16),
                            ),
                            SizedBox(
                              width: 75,
                            ),
                            Icon(Icons.error_outline_outlined)
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    ListTile(
                      title: Text(
                          'The Nitendo switch gaming console is a compact device that can be taken everywhere. This portable super device also equiped 2 gamepads.'),
                      subtitle: Text(
                        'Read more',
                        style: TextStyle(
                            color: Color.fromARGB(255, 27, 5, 231),
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 70,
                    ),
                    Container(
                      width: double.infinity,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 91, 255, 26),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          'Add to Card',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 22),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Center(
                      child: Text(
                        'Delivery on 15 February',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(bottom: 13)),
          ],
        ),
      ),
    );
  }
}
