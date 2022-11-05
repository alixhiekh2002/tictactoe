import 'package:flutter/material.dart';
import 'package:tictactoe/Screens/leaderboard.dart';

class WinScreen extends StatefulWidget {
  List<String> winners;
  final Function onReset;
  WinScreen(this.winners, this.onReset);

  @override
  State<WinScreen> createState() => _WinScreenState();
}

class _WinScreenState extends State<WinScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 45),
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
                  style: TextStyle(fontSize: 25),
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
          Center(
            child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: Color(0xff0D47A1)),
                margin: EdgeInsets.only(top: 35),
                child: SizedBox(
                  width: 300,
                  height: 350,
                  child: Center(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('Images/trophy.png'),
                      SizedBox(height: 20),
                      widget.winners.last == "Drawn"
                          ? Text(
                              "Match ${widget.winners.last} \n ",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 30),
                            )
                          : Text(
                              "${widget.winners.last} \n   Won",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 30),
                            )
                    ],
                  )),
                )),
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
                          builder: (_) => LeaderBoard(widget.winners)));
                    },
                    child: Container(
                        padding: const EdgeInsets.only(left: 24),
                        margin: const EdgeInsets.only(left: 23, bottom: 43),
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
                                    color: Colors.white, fontSize: 18),
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
                        widget.onReset();
                      },
                      child: Image.asset(
                        'Images/refresh.png',
                        height: 40.7,
                        width: 38.3,
                      ),
                    ),
                  )
                ],
              ))
        ],
      ),
    );
  }
}
