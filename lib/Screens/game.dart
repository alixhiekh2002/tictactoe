import 'package:flutter/material.dart';
import 'package:tictactoe/Screens/leaderboard.dart';
import 'package:tictactoe/Screens/winscreen.dart';

class GamePage extends StatefulWidget {
  const GamePage({Key? key}) : super(key: key);

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  List<List<int>> gameGrid = [
    [0, 0, 0],
    [0, 0, 0],
    [0, 0, 0]
  ];
  var imgCont1;
  var imgCont2;
  var imgCont3;
  var imgCont4;
  var imgCont5;
  var imgCont6;
  var imgCont7;
  var imgCont8;
  var imgCont9;
  String player = "";
  List<int> playerPics = [];
  bool winCondition = false;
  List<String> winners = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: winCondition
          ? WinningContainer()
          : Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 45, right: 27, left: 27),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Container(
                              height: 60,
                              width: 60,
                              margin: EdgeInsets.only(bottom: 10),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  color: Colors.blue),
                              child: Center(
                                  child: Image.asset(
                                'Images/player1.png',
                                height: 30,
                                width: 30,
                              ))),
                          Text("Player 1")
                        ],
                      ),
                      Text(
                        "VS",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      Column(
                        children: [
                          Container(
                              height: 60,
                              width: 60,
                              margin: EdgeInsets.only(bottom: 10),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  color: Color(0xff0D47A1)),
                              child: Center(
                                  child: Image.asset(
                                'Images/player2.png',
                                height: 25,
                                width: 25,
                              ))),
                          Text("Player 2")
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  // Pehli row
                  margin: EdgeInsets.only(top: 35),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            if (!playerPics.contains(0)) {
                              setState(() {
                                currentStatus();
                                imgCont1 = Image.asset(player);
                                playerPics.add(0);
                                if (player == "Images/zero.png") {
                                  gameGrid[0][0] = 1;
                                } else {
                                  gameGrid[0][0] = 2;
                                }
                                winnerCheck();
                              });
                            }
                          },
                          child: Container(
                            width: 100,
                            height: 100,
                            decoration: const BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                                        color: Color(0xffC5C5C5), width: 2),
                                    right: BorderSide(
                                        color: Color(0xffC5C5C5), width: 2))),
                            child: Padding(
                              padding: EdgeInsets.only(top: 25),
                              child: imgCont1,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            if (!playerPics.contains(1)) {
                              setState(() {
                                currentStatus();
                                imgCont2 = Image.asset(player);
                                playerPics.add(1);
                                if (player == "Images/zero.png") {
                                  gameGrid[0][1] = 1;
                                } else {
                                  gameGrid[0][1] = 2;
                                }
                                winnerCheck();
                              });
                            }
                          },
                          child: Container(
                            width: 100,
                            height: 100,
                            decoration: const BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                                        color: Color(0xffC5C5C5), width: 2),
                                    right: BorderSide(
                                        color: Color(0xffC5C5C5), width: 2))),
                            child: Padding(
                              padding: EdgeInsets.only(top: 25),
                              child: imgCont2,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            if (!playerPics.contains(2)) {
                              setState(() {
                                currentStatus();
                                imgCont3 = Image.asset(player);
                                playerPics.add(2);
                                if (player == "Images/zero.png") {
                                  gameGrid[0][2] = 1;
                                } else {
                                  gameGrid[0][2] = 2;
                                }
                                winnerCheck();
                              });
                            }
                          },
                          child: Container(
                            width: 100,
                            height: 100,
                            decoration: const BoxDecoration(
                                border: Border(
                              bottom: BorderSide(
                                  color: Color(0xffC5C5C5), width: 2),
                            )),
                            child: Padding(
                              padding: EdgeInsets.only(top: 25),
                              child: imgCont3,
                            ),
                          ),
                        ),
                      ]),
                ),
                Container(
                  // 2nd row <3;
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            if (!playerPics.contains(3)) {
                              setState(() {
                                currentStatus();
                                imgCont4 = Image.asset(player);
                                playerPics.add(3);
                                if (player == "Images/zero.png") {
                                  gameGrid[1][0] = 1;
                                } else {
                                  gameGrid[1][0] = 2;
                                }
                                winnerCheck();
                              });
                            }
                          },
                          child: Container(
                            width: 100,
                            height: 100,
                            decoration: const BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                                        color: Color(0xffC5C5C5), width: 2),
                                    right: BorderSide(
                                        color: Color(0xffC5C5C5), width: 2))),
                            child: Padding(
                              padding: EdgeInsets.only(top: 25),
                              child: imgCont4,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            if (!playerPics.contains(4)) {
                              setState(() {
                                currentStatus();
                                imgCont5 = Image.asset(player);
                                playerPics.add(4);
                                if (player == "Images/zero.png") {
                                  gameGrid[1][1] = 1;
                                } else {
                                  gameGrid[1][1] = 2;
                                }
                                winnerCheck();
                              });
                            }
                          },
                          child: Container(
                            width: 100,
                            height: 100,
                            decoration: const BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                                        color: Color(0xffC5C5C5), width: 2),
                                    right: BorderSide(
                                        color: Color(0xffC5C5C5), width: 2))),
                            child: Padding(
                              padding: EdgeInsets.only(top: 25),
                              child: imgCont5,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            if (!playerPics.contains(5)) {
                              setState(() {
                                currentStatus();
                                imgCont6 = Image.asset(player);
                                playerPics.add(5);
                                if (player == "Images/zero.png") {
                                  gameGrid[1][2] = 1;
                                } else {
                                  gameGrid[1][2] = 2;
                                }
                                winnerCheck();
                              });
                            }
                          },
                          child: Container(
                            width: 100,
                            height: 100,
                            decoration: const BoxDecoration(
                                border: Border(
                              bottom: BorderSide(
                                  color: Color(0xffC5C5C5), width: 2),
                            )),
                            child: Padding(
                              padding: EdgeInsets.only(top: 25),
                              child: imgCont6,
                            ),
                          ),
                        ),
                      ]),
                ),
                Container(
                  // 3rd Row <3 ;
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            if (!playerPics.contains(6)) {
                              setState(() {
                                currentStatus();
                                imgCont7 = Image.asset(player);
                                playerPics.add(6);
                                if (player == "Images/zero.png") {
                                  gameGrid[2][0] = 1;
                                } else {
                                  gameGrid[2][0] = 2;
                                }
                                winnerCheck();
                              });
                            }
                          },
                          child: Container(
                            width: 100,
                            height: 100,
                            decoration: const BoxDecoration(
                                border: Border(
                                    right: BorderSide(
                                        color: Color(0xffC5C5C5), width: 2))),
                            child: Padding(
                              padding: EdgeInsets.only(top: 25),
                              child: imgCont7,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            if (!playerPics.contains(7)) {
                              setState(() {
                                currentStatus();
                                imgCont8 = Image.asset(player);
                                playerPics.add(7);
                                if (player == "Images/zero.png") {
                                  gameGrid[2][1] = 1;
                                } else {
                                  gameGrid[2][1] = 2;
                                }
                                winnerCheck();
                              });
                            }
                          },
                          child: Container(
                            width: 100,
                            height: 100,
                            decoration: const BoxDecoration(
                                border: Border(
                                    right: BorderSide(
                                        color: Color(0xffC5C5C5), width: 2))),
                            child: Padding(
                              padding: EdgeInsets.only(top: 25),
                              child: imgCont8,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            if (!playerPics.contains(8)) {
                              setState(() {
                                currentStatus();
                                imgCont9 = Image.asset(player);
                                playerPics.add(8);
                                if (player == "Images/zero.png") {
                                  gameGrid[2][2] = 1;
                                } else {
                                  gameGrid[2][2] = 2;
                                }
                                winnerCheck();
                              });
                            }
                          },
                          child: Container(
                            width: 100,
                            height: 100,
                            decoration: const BoxDecoration(border: Border()),
                            child: Padding(
                              padding: EdgeInsets.only(top: 25),
                              child: imgCont9,
                            ),
                          ),
                        ),
                      ]),
                ),
                Spacer(),
                Container(
                    margin: EdgeInsets.only(bottom: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => LeaderBoard(winners)));
                          },
                          child: Container(
                              padding: const EdgeInsets.only(left: 24),
                              margin:
                                  const EdgeInsets.only(left: 23, bottom: 43),
                              height: 62,
                              width: 218,
                              decoration: BoxDecoration(
                                color: const Color(0xff0D47A1),
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: Row(
                                children: [
                                  Image.asset('Images/leadboard.png'),
                                  const Padding(
                                    padding: EdgeInsets.only(left: 17),
                                    child: Text(
                                      'Leader board',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20),
                                    ),
                                  )
                                ],
                              )),
                        ),
                        const Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 28, bottom: 45),
                          child: GestureDetector(
                              onTap: () {
                                reset;
                              },
                              child: Icon(
                                Icons.refresh,
                                color: Color(0xff0D47A1),
                              )),
                        )
                      ],
                    ))
              ],
            ),
    );
  }

  WinningContainer() {
    return WinScreen(winners, reset);
  }

  reset() {
    setState(() {
      gameGrid = [
        [0, 0, 0],
        [0, 0, 0],
        [0, 0, 0]
      ];
      imgCont1 = null;
      imgCont2 = null;
      imgCont3 = null;
      imgCont4 = null;
      imgCont5 = null;
      imgCont6 = null;
      imgCont7 = null;
      imgCont8 = null;
      imgCont9 = null;
      playerPics = [];
      player = '';
      //winners = [];
      winCondition = false;
    });
  }

  void winnerCheck() {
    int firstGrid = gameGrid[0][0];
    int secondGrid = gameGrid[0][1];
    int thirdGrid = gameGrid[0][2];
    int fourthGrid = gameGrid[1][0];
    int fifthGrid = gameGrid[1][1];
    int sixthGrid = gameGrid[1][2];
    int seventhGrid = gameGrid[2][0];
    int eighthGrid = gameGrid[2][1];
    int ninthGrid = gameGrid[2][2];

    if ((firstGrid == 1 && secondGrid == 1 && thirdGrid == 1) ||
        (fourthGrid == 1 && fifthGrid == 1 && sixthGrid == 1) ||
        (seventhGrid == 1 && eighthGrid == 1 && ninthGrid == 1) ||
        (firstGrid == 1 && fourthGrid == 1 && seventhGrid == 1) ||
        (secondGrid == 1 && fifthGrid == 1 && eighthGrid == 1) ||
        (thirdGrid == 1 && sixthGrid == 1 && ninthGrid == 1) ||
        (firstGrid == 1 && fifthGrid == 1 && ninthGrid == 1) ||
        (thirdGrid == 1 && fifthGrid == 1 && seventhGrid == 1)) {
      winners.add("Player 1");
      winCondition = true;
    } else if ((firstGrid == 2 && secondGrid == 2 && thirdGrid == 2) ||
        (fourthGrid == 2 && fifthGrid == 2 && sixthGrid == 2) ||
        (seventhGrid == 2 && eighthGrid == 2 && ninthGrid == 2) ||
        (firstGrid == 2 && fourthGrid == 2 && seventhGrid == 2) ||
        (secondGrid == 2 && fifthGrid == 2 && eighthGrid == 2) ||
        (thirdGrid == 2 && sixthGrid == 2 && ninthGrid == 2) ||
        (firstGrid == 2 && fifthGrid == 2 && ninthGrid == 2) ||
        (thirdGrid == 2 && fifthGrid == 2 && seventhGrid == 2)) {
      winners.add('Player 2');
      winCondition = true;
    } else if (playerPics.length == 9) {
      winners.add('Drawn');
      winCondition = true;
    }
  }

  void currentStatus() {
    if (player == "Images/zero.png") {
      player = 'Images/cross.png';
    } else {
      player = 'Images/zero.png';
    }
  }

// WinningScreen() {
//
//   return WinScreen(winners.last);
//
//
//
// }
}
