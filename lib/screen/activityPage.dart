import 'package:flutter/material.dart';
import 'package:grab/components/icons.dart';

class ActivityPage extends StatefulWidget {
  const ActivityPage({super.key});

  @override
  State<ActivityPage> createState() => _ActivityPageState();
}

class _ActivityPageState extends State<ActivityPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 30, left: 20),
                child: const Text(
                  'Activity',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 30, left: 130),
                child: Card(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  color: const Color.fromARGB(255, 230, 245, 238),
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(
                            left: 10, top: 10, bottom: 10),
                        child: const Icon(
                          Icons.history,
                          color: Colors.black,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(
                            left: 5, right: 10, top: 10, bottom: 10),
                        child: const Text(
                          'History',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 50, left: 20),
                child: const Text(
                  'Insights',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 50, left: 250),
                child: Card(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  color: const Color.fromARGB(255, 230, 245, 238),
                  child: Container(
                    margin: const EdgeInsets.all(8.0),
                    child: const Icon(
                      Icons.cancel_outlined,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(children: [
              Container(
                margin: const EdgeInsets.only(top: 20, left: 10),
                child: Card(
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  color: const Color.fromARGB(255, 252, 238, 193),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(top: 40, right: 50),
                        child: Text(
                          '''You saved RM9.00 with your
GrabUnlimtied plan
                          ''',
                          maxLines: 50,
                          style: TextStyle(
                              color: Colors.red[900],
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.only(
                                bottom: 10, right: 80, left: 30),
                            child: Text(
                              'View your other benefits',
                              style: TextStyle(
                                  color: Colors.red[900],
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                            ),
                          ),
                          Container(
                              margin: const EdgeInsets.only(
                                  bottom: 10, left: 60, right: 10),
                              child: Icon(Icons.arrow_right_alt,
                                  color: Colors.red[900])),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20, left: 15, right: 10),
                child: Card(
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  color: const Color.fromARGB(255, 230, 245, 238),
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(
                            top: 40, bottom: 10, right: 100),
                        child: Text(
                          'You have 224 points now',
                          maxLines: 50,
                          style: TextStyle(
                              color: Colors.indigo[900],
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            bottom: 10, right: 190, left: 30),
                        child: Text(
                          'Use them to redeem exclusive items!',
                          maxLines: 50,
                          style: TextStyle(
                              color: Colors.indigo[900],
                              fontWeight: FontWeight.bold,
                              fontSize: 10),
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(
                                top: 30, bottom: 10, left: 20, right: 40),
                            child: Text(
                              'View your other benefits',
                              style: TextStyle(
                                  color: Colors.indigo[900],
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(
                              left: 100,
                              top: 20,
                            ),
                            child: Icon(
                              Icons.arrow_right_alt,
                              color: Colors.indigo[900],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ]),
          )
        ],
      ),
    );
  }
}
