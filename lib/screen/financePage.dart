import 'package:flutter/material.dart';

class financePage extends StatefulWidget {
  const financePage({super.key});

  @override
  State<financePage> createState() => _financePageState();
}

class _financePageState extends State<financePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 30, left: 20),
                child: const Text(
                  'GrabFin',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 30, left: 250),
                child: const Icon(
                  Icons.settings,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          Column(
            children: [
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 20, left: 20),
                    child: const Text(
                      'Your money is safe with us',
                      style: TextStyle(color: Colors.black, fontSize: 12),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 20, left: 5),
                    child: const Icon(
                      Icons.arrow_circle_right,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
              Container(
                margin: const EdgeInsets.only(
                  top: 20,
                  left: 15,
                  right: 10,
                ),
                child: SizedBox(
                  width: double.infinity,
                  height: 170,
                  child: Card(
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    color: Colors.green[800],
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                              top: 20, left: 20, right: 270),
                          child: const Text(
                            'GrabPay Wallet',
                            maxLines: 50,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 12),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 20, right: 280),
                          child: const Text(
                            'RM20.71',
                            maxLines: 50,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
