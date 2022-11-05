import 'package:flutter/material.dart';
import 'package:tictactoe/Screens/game.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  void initState() {
    super.initState();

    navigateToHome();
  }

  navigateToHome() async {
    await Future.delayed(const Duration(seconds: 3));
    Navigator.push(context, MaterialPageRoute(builder: (_) => GamePage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 1,
            child: Container(
              decoration: BoxDecoration(color: Color(0xFF0D47A1)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Kati Zero',
                            style: TextStyle(color: Colors.white, fontSize: 35))
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Image.asset('Images/logo1.png')],
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: SizedBox(
              child: Container(
                decoration: BoxDecoration(color: Color(0xFF42A5F5)),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Image.asset('Images/logo2.png')],
                    ),
                    Spacer(),
                    Container(
                      margin: EdgeInsets.only(bottom: 25),
                      child: Column(
                        children: [
                          Text(
                            "POWERED BY ",
                            style: TextStyle(fontSize: 30, color: Colors.white),
                          ),
                          Text(
                            "TECH IDARA ",
                            style: TextStyle(
                                fontSize: 20, color: Color(0xFF0D47A1)),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
