import 'package:flutter/material.dart';

// debugShowCheckedModeBanner: false, //
// mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//ElevatedButton
//Spacer
//VerticalDivider
//SizedBox
//StatefulWidget
//createState()
//set state
//
void main() {
  runApp( BasketBallPoint());
}

//widget
class BasketBallPoint extends StatefulWidget {
  @override
  State<BasketBallPoint> createState() => _BasketBallPointState();
}

//state can be change
class _BasketBallPointState extends State<BasketBallPoint> {
  int teamPiontA = 0;

  int teamPointB = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text(
              'Points Counter',
              style: TextStyle(color: Colors.white),
            ),
            backgroundColor: Colors.orange,
          ),
          body: Column(
            children: [
              Spacer(
                flex: 1,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text(
                        'Team A',
                        style: TextStyle(
                          fontSize: 32,
                        ),
                      ),
                      Text(
                        '$teamPiontA',
                        style: TextStyle(
                          fontSize: 150,
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              minimumSize: Size(150, 50)),
                          onPressed: () {
                            setState(() {
                              teamPiontA++;
                            });
                          },
                          child: Text(
                            'Add to point 1',
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          )),
                      const SizedBox(
                        height: 16,
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              minimumSize: Size(150, 50)),
                          onPressed: () {
                            setState(() {
                              teamPiontA += 2;
                            });
                          },
                          child: Text(
                            'Add to point 2',
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          )),
                      const SizedBox(
                        height: 16,
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              minimumSize: Size(150, 50)),
                          onPressed: () {
                            setState(() {
                              teamPiontA += 3;
                            });
                          },
                          child: Text(
                            'Add to point 3',
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          )),
                    ],
                  ),
                  const SizedBox(
                    height: 420,
                    child: VerticalDivider(
                      color: Colors.blueGrey,
                      thickness: 1,
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        'Team B',
                        style: TextStyle(
                          fontSize: 32,
                        ),
                      ),
                      Text(
                        '$teamPointB',
                        style: TextStyle(
                          fontSize: 150,
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              minimumSize: Size(150, 50)),
                          onPressed: () {
                            setState(() {
                              teamPointB++;
                            });
                          },
                          child: Text(
                            'Add to point 1',
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          )),
                      const SizedBox(
                        height: 16,
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              minimumSize: Size(150, 50)),
                          onPressed: () {
                            setState(() {
                              teamPointB += 2;
                            });
                          },
                          child: Text(
                            'Add to point 2',
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          )),
                      const SizedBox(
                        height: 16,
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              minimumSize: Size(150, 50)),
                          onPressed: () {
                            setState(() {
                              teamPointB += 3;
                            });
                          },
                          child: Text(
                            'Add to point 3',
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          )),
                    ],
                  ),
                ],
              ),
              Spacer(
                flex: 1,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      minimumSize: Size(150, 50)),
                  onPressed: () {
                    setState(() {
                      teamPointB = 0;
                      teamPiontA = 0;
                    });
                  },
                  child: Text(
                    ' Reset',
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  )),
              Spacer(
                flex: 1,
              )
            ],
          )),
    );
  }
}
