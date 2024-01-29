import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Transport extends StatelessWidget {
  const Transport({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 230,
                    // ignore: use_full_hex_values_for_flutter_colors
                    color: const Color(0xFFFC8F1C6),
                  ),
                ],
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(30, 50, 5, 10),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: const Icon(
                            Icons.arrow_back,
                            size: 30,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(5, 50, 20, 10),
                        child: Text(
                          'Transport',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(80, 50, 20, 10),
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                          ),
                          color: Color.fromARGB(255, 205, 240, 204),
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(10),
                                child: Icon(
                                  Icons.map_outlined,
                                  color: Colors.black,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(5),
                                child: Text(
                                  'Map',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(5, 5, 140, 10),
                    child: Text(
                      "Wherever you're going, let's get you there!",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(10, 60, 10, 0),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                      color: Colors.white,
                      child: SizedBox(
                        width: 428,
                        height: 60,
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(10),
                              child: Icon(
                                Icons.location_on,
                                size: 30,
                                color: Color.fromARGB(255, 182, 0, 0),
                              ),
                            ),
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  labelText: 'Where to?',
                                  labelStyle: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 30, left: 20),
                        child: Card(
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(18)),
                          ),
                          color: Colors.green[600],
                          child: const SizedBox(
                            width: 32,
                            height: 32,
                            child: Icon(
                              Icons.location_on,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.fromLTRB(10, 40, 200, 5),
                            child: const Text(
                              'Melaka Sentral',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.fromLTRB(7, 0, 10, 5),
                            child: const Text(
                              'Main Entrance, Jalan Tun Raak, plaza Melaka Sentral, 754...',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 10),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 30, right: 5),
                        child: Icon(
                          Icons.arrow_right_alt_sharp,
                          color: Colors.grey[600],
                          size: 30,
                        ),
                      )
                    ],
                  ),
                  const Divider(
                    color: Colors.grey,
                    indent: 20,
                    endIndent: 20,
                  ),
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 5, left: 20),
                        child: Card(
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(18)),
                          ),
                          color: Colors.green[600],
                          child: const SizedBox(
                            width: 32,
                            height: 32,
                            child: Icon(
                              Icons.location_on,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.fromLTRB(10, 10, 200, 5),
                            child: const Text(
                              'Woodfire-MITC',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.fromLTRB(7, 0, 10, 5),
                            child: const Text(
                              'Main Entrance, Jalan Tun Raak, plaza Melaka Sentral, 754...',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 10),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 30, right: 5),
                        child: Icon(
                          Icons.arrow_right_alt_sharp,
                          color: Colors.grey[600],
                          size: 30,
                        ),
                      ),
                    ],
                  ),
                  const Divider(
                    color: Colors.grey,
                    indent: 20,
                    endIndent: 20,
                  ),
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 5, left: 20),
                        child: Card(
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(18)),
                          ),
                          color: Colors.green[600],
                          child: const SizedBox(
                            width: 32,
                            height: 32,
                            child: Icon(
                              Icons.location_on,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.fromLTRB(10, 10, 110, 5),
                            child: const Text(
                              'University Green Apartment',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.fromLTRB(7, 0, 10, 5),
                            child: const Text(
                              'Main Entrance, Jalan Tun Raak, plaza Melaka Sentral, 754...',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 10),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 30, right: 5),
                        child: Icon(
                          Icons.arrow_right_alt_sharp,
                          color: Colors.grey[600],
                          size: 30,
                        ),
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(10, 20, 190, 10),
                    child: Text(
                      'More ways to travel',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Card(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                      color: const Color.fromARGB(255, 229, 251, 205),
                      child: SizedBox(
                        width: 400,
                        height: 100,
                        child: Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(left: 10, top: 10),
                              child: SvgPicture.asset(
                                'assets/driver.svg',
                                height: 70,
                                width: 70,
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 15, top: 10),
                              child: const Text(
                                'Hire a driver by the hour',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 18),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
