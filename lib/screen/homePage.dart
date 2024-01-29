// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grab/screen/accountPage.dart';
import 'package:grab/screen/activityPage.dart';
import 'package:grab/screen/financePage.dart';
import 'package:grab/screen/messagesPage.dart';
import 'package:grab/screen/transport.dart';

import 'allitem.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero, // Add this line to remove default padding
        children: [
          Stack(children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 100,
                  color: Colors.green,
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 60, 10, 0),
              child: Row(
                children: [
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),
                    color: Colors.white,
                    child: SizedBox(
                      width: 60,
                      height: 60,
                      child: Icon(
                        Icons.qr_code_scanner_rounded,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(65, 60, 0, 0),
              child: Row(
                children: [
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),
                    color: Colors.white,
                    child: SizedBox(
                        width: 328,
                        height: 60,
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                              child: Icon(
                                Icons.search_rounded,
                                size: 30,
                                color: Color.fromARGB(255, 98, 98, 98),
                              ),
                            ),
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    labelText: 'Enter here',
                                    labelStyle: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold)),
                              ),
                            ),
                            VerticalDivider(
                              color: Colors.black,
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                              child: Icon(
                                Icons.favorite_border,
                                size: 30,
                                color: Color.fromARGB(255, 98, 98, 98),
                              ),
                            ),
                          ],
                        )),
                  )
                ],
              ),
            ),
          ]),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(25, 20, 10, 10),
                child: GestureDetector(
                  onTap: () {
                    // Navigate to another page with custom page route
                    Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (context, animation, secondaryAnimation) =>
                            const Transport(),
                        transitionsBuilder:
                            (context, animation, secondaryAnimation, child) {
                          const begin = Offset(1.0, 0.0);
                          const end = Offset.zero;
                          const curve = Curves.easeInOut;

                          var tween = Tween(begin: begin, end: end)
                              .chain(CurveTween(curve: curve));

                          var offsetAnimation = animation.drive(tween);

                          return SlideTransition(
                            position: offsetAnimation,
                            child: child,
                          );
                        },
                        transitionDuration: const Duration(
                            milliseconds: 300), // Adjust the duration as needed
                      ),
                    );
                  },
                  child: Column(
                    children: [
                      SvgPicture.asset(
                        'assets/car.svg',
                        height: 60,
                        width: 60,
                      ),
                      const SizedBox(
                        height: 27,
                      ),
                      const Text(
                        'Car',
                        style: TextStyle(color: Colors.black),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 10, 10),
                child: Column(
                  children: [
                    SvgPicture.asset(
                      'assets/food.svg',
                      height: 60,
                      width: 60,
                    ),
                    const SizedBox(
                      height: 27,
                    ),
                    const Text(
                      'Food',
                      style: TextStyle(color: Colors.black),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(25, 20, 10, 10),
                child: Column(
                  children: [
                    SvgPicture.asset(
                      'assets/express.svg',
                      height: 60,
                      width: 60,
                    ),
                    const SizedBox(
                      height: 27,
                    ),
                    const Text(
                      'Express',
                      style: TextStyle(color: Colors.black),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 5, 10, 10),
                child: Column(children: [
                  GestureDetector(
                    onTap: () {
                      // Show modal bottom sheet with items from another page
                      showModalBottomSheet(
                        context: context,
                        builder: (BuildContext context) {
                          return const allitems();
                        },
                      );
                    },
                    child: SvgPicture.asset(
                      'assets/all.svg',
                      height: 100,
                      width: 100,
                    ),
                  ),
                  const Text(
                    'All',
                    style: TextStyle(color: Colors.black),
                  )
                ]),
              ),
            ],
          ),
          const Row(
            children: [
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 20, 0, 0),
                    child: Text(
                      "Payment",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(30, 5, 0, 0),
                    child: Text(
                      "Add a Card",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Padding(
                  padding: EdgeInsets.fromLTRB(70, 35, 0, 0),
                  child: Icon(
                    Icons.wallet_outlined,
                    size: 35,
                    color: Colors.green,
                  )),
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(40, 20, 0, 0),
                    child: Text(
                      "Use Points",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                    child: Text(
                      "222",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(20, 40, 180, 0),
            child: Text(
              'Recommended food',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            children: [
              Column(
                children: [
                  SvgPicture.asset(
                    'assets/SpicyChicken.svg',
                    height: 200,
                    width: 200,
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                    child: Text(
                      'Spicy Chicken McD...',
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(13, 5, 0, 0),
                    child: Text(
                      "McDonald's - Batu Beren..",
                      style: TextStyle(
                          color: Color.fromARGB(255, 101, 101, 101),
                          fontSize: 15),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(0, 5, 120, 0),
                    child: Text(
                      "RM21.75",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  SvgPicture.asset(
                    'assets/SpicyChicken.svg',
                    height: 200,
                    width: 200,
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                    child: Text(
                      'Spicy Chicken McD...',
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(13, 5, 0, 0),
                    child: Text(
                      "McDonald's - Batu Beren..",
                      style: TextStyle(
                          color: Color.fromARGB(255, 101, 101, 101),
                          fontSize: 15),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(0, 5, 120, 0),
                    child: Text(
                      "RM21.75",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Column(
            children: [
              Container(
                margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: const Text(
                  'People Love food from',
                  style: TextStyle(color: Colors.black),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
