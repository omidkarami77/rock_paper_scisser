import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(GameApplication());
}

class GameApplication extends StatefulWidget {
  const GameApplication({Key? key}) : super(key: key);

  @override
  _GameApplicationState createState() => _GameApplicationState();
}

class _GameApplicationState extends State<GameApplication> {
  int top = 2;
  int bottom = 2;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "Vazir"),
      home: Scaffold(
        backgroundColor: Colors.deepOrange,
        appBar: AppBar(
          backgroundColor: Colors.deepOrange[600],
          centerTitle: true,
          title: Text("سنگ   کاغذ   قیچی"),
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image(image: AssetImage("images/$top.png"),height: 100.0,),
              TextButton(
                  style: TextButton.styleFrom(primary: Colors.white),
                  onPressed: () {
                    setState(() {
                      Random random = new Random();
                      // from 10 upto 99 included

                      top = random.nextInt(3) + 1;
                      bottom = random.nextInt(3) + 1;
                    });
                  },
                  child: Text(
                    "شروع بازی",
                    style: TextStyle(fontSize: 20),
                  )),
              Image(image: AssetImage("images/$bottom.png"),height: 100.0,),
            ],
          ),
        ),
      ),
    );
  }
}
