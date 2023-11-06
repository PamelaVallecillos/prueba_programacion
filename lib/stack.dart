import 'dart:ffi';

import 'package:flutter/material.dart';

class StackHome extends StatefulWidget {
  const StackHome({Key? key}) : super(key: key);

  @override
  _StackHomeState createState() => _StackHomeState();
}

class _StackHomeState extends State<StackHome> {
  static const cardImage = NetworkImage(
      'https://media.gettyimages.com/id/157721815/es/foto/casa-moderna-fachada-del-hotel.jpg?s=1024x1024&w=gi&k=20&c=W4PfozNeekcTSV05cFT0MTx5Qz8gm4brJrsJQ2K5zCQ=');

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 1,
      child: Scaffold(
        body: TabBarView(
          children: [
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Card(
                elevation: 4.0,
                child: Column(
                  children: [
                    ListTile(
                      title: Row(
                        children: [
                          Text('        1499 Galenia Road         '),
                          const SizedBox(width: 8),
                          Icon(Icons.arrow_upward),
                          const SizedBox(width: 8),
                          Icon(Icons.arrow_downward),
                        ],
                      ),
                      leading: Icon(Icons.close),
                    ),
                    Container(
                      height: 200,
                      child: Stack(
                        children: [
                          Ink.image(
                            image: cardImage,
                            fit: BoxFit.cover,
                          ),
                          Positioned(
                            bottom: 10,
                            left: 10,
                            child: Text(
                              'by Kelly Smith with Quest Realty',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 100,
                      child: Stack(
                        children: [
                          Positioned(
                            top: 10,
                            right: 10,
                            child: Icon(Icons.favorite_outline,
                                color: Colors.black, size: 30),
                          ),
                          Positioned(
                            top: 10,
                            right: 50,
                            child: Icon(Icons.arrow_upward,
                                color: Colors.black, size: 30),
                          ),
                          Positioned(
                            bottom: 35,
                            left: 10,
                            child: Text(
                              '\$599,000',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 10,
                            left: 10,
                            child: Text(
                              '1499 Galenia Rd, Austin, TX',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Text(
                                '4',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'Beds',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                '3+',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'Baths',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                '4,203',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'Sq.ft.',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                '8,843',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'Lot Sq ft.',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 100,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.location_on),
                              Text(
                                'View Map',
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.directions_car),
                              Text(
                                '10 minutes away',
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 150,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Open Houses',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                'Friday 1:00pm - 4:00 pm                            2/24  ',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                ),
                              ),
                              Icon(Icons.chevron_right),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                'Saturday 1:00pm - 4:00 pm                       2/25  ',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                ),
                              ),
                              Icon(Icons.chevron_right),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                        width: double.infinity,
                        height: 35,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            primary: Colors.red,
                          ),
                          child: Text(
                            'Contact Agent',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                        ))
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
