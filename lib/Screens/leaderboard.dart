import 'package:flutter/material.dart';

class LeaderBoard extends StatefulWidget {
  List<String> Records;

  LeaderBoard(this.Records);
  @override
  State<LeaderBoard> createState() => _LeaderBoardState();
}

class _LeaderBoardState extends State<LeaderBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 60, left: 32),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Image.asset(
                      'Images/arrow.png',
                      height: 19,
                      width: 10,
                    )),
                Padding(
                  padding: const EdgeInsets.only(left: 36),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'L E A D E R',
                        style: TextStyle(
                            color: Color(0xff0D47A1),
                            fontSize: 19,
                            fontWeight: FontWeight.w800),
                      ),
                      Text(
                        'B  O  A  R  D',
                        style: TextStyle(
                            color: Color(0xff0D47A1),
                            fontSize: 25,
                            fontWeight: FontWeight.w900),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Expanded(
            child: ListView.builder(
                itemCount: widget.Records.length,
                itemBuilder: (context, index) => WinnerRecords(context, index)),
          )
        ],
      ),
    );
  }

  WinnerRecords(context, index) {
    var image = '';
    if (widget.Records[index] == "Player 1") {
      image = "Images/p2.png";
    } else if (widget.Records[index] == "Player 2") {
      image = "Images/p1.png";
    } else {
      image = "Images/trophy.png";
    }

    return Container(
        margin: const EdgeInsets.only(top: 9, right: 20, left: 27),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Color(0xffF5F5F5),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            Column(
              children: [
                Image.asset(
                  image,
                  height: 50,
                  width: 50,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      widget.Records.removeAt(index);
                    });
                  },
                  child: Text("Delete"),
                )
              ],
            ),
            SizedBox(width: 10),
            Text(
              widget.Records[index],
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
              maxLines: null,
            ),
            SizedBox(width: 70),
            Padding(
              padding: EdgeInsets.only(right: 19),
              child: Image.asset(
                "Images/trophy.png",
                height: 52,
                width: 53,
              ),
            ),
          ],
        ));
  }
}
