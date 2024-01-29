import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class allitems extends StatefulWidget {
  const allitems({super.key});

  @override
  State<allitems> createState() => _allitemsState();
}

class _allitemsState extends State<allitems> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(10, 30, 300, 0),
            child: const Text(
              'For You',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
          ),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 20, left: 35, right: 10),
                child: Column(
                  children: [
                    SvgPicture.asset(
                      'assets/express.svg',
                      height: 60,
                      width: 60,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Express',
                      style: TextStyle(color: Colors.black),
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20, left: 15, right: 10),
                child: Column(
                  children: [
                    SvgPicture.asset(
                      'assets/Experiences.svg',
                      height: 60,
                      width: 60,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Experiences',
                      style: TextStyle(color: Colors.black),
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20, left: 15, right: 10),
                child: Column(
                  children: [
                    SvgPicture.asset(
                      'assets/finance.svg',
                      height: 60,
                      width: 60,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Finance',
                      style: TextStyle(color: Colors.black),
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20, left: 22),
                child: Column(
                  children: [
                    SvgPicture.asset(
                      'assets/gifts.svg',
                      height: 60,
                      width: 60,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Gifts',
                      style: TextStyle(color: Colors.black),
                    )
                  ],
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(20, 15, 260, 0),
            child: const Text(
              'All Services',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
          ),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 20, left: 35, right: 10),
                child: Column(
                  children: [
                    SvgPicture.asset(
                      'assets/hotels.svg',
                      height: 60,
                      width: 60,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Hotels',
                      style: TextStyle(color: Colors.black),
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20, left: 25, right: 10),
                child: Column(
                  children: [
                    SvgPicture.asset(
                      'assets/insurance.svg',
                      height: 60,
                      width: 60,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Pay',
                      style: TextStyle(color: Colors.black),
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20, left: 30, right: 10),
                child: Column(
                  children: [
                    SvgPicture.asset(
                      'assets/mart.svg',
                      height: 60,
                      width: 60,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Mart',
                      style: TextStyle(color: Colors.black),
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20, left: 22),
                child: Column(
                  children: [
                    SvgPicture.asset(
                      'assets/pay.svg',
                      height: 60,
                      width: 60,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Insurance',
                      style: TextStyle(color: Colors.black),
                    )
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 20, left: 35),
                child: Column(
                  children: [
                    SvgPicture.asset(
                      'assets/pay.svg',
                      height: 60,
                      width: 60,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Insurance',
                      style: TextStyle(color: Colors.black),
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20, left: 30),
                child: Column(
                  children: [
                    SvgPicture.asset(
                      'assets/Rewards.svg',
                      height: 60,
                      width: 60,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Rewards',
                      style: TextStyle(color: Colors.black),
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20, left: 30),
                child: Column(
                  children: [
                    SvgPicture.asset(
                      'assets/bus & ferry.svg',
                      height: 60,
                      width: 60,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Bus & Ferry',
                      style: TextStyle(color: Colors.black),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
