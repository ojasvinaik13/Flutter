import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.purple[300],
      appBar: AppBar(
        title: Text("Emoji Roll"),
        backgroundColor: Colors.purple[200],
      ),
      body: MainPage(),
    ),
  )
  );
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int leftEmoji = 1, rightEmoji = 7;
  void changeDice() {
    setState(() {
      leftEmoji = Random().nextInt(7) + 1;
      rightEmoji = Random().nextInt(7) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
              child: FlatButton(
                  onPressed: () {
                    changeDice();
                  },
                  child: Image.asset(
                    "images/emoji$leftEmoji.jpg",
                    height: 100,
                    width: 200,
                    fit: BoxFit.fitWidth,
                  ))),
          Expanded(
            child: FlatButton(
                onPressed: () {
                  changeDice();
                },
                child: Image.asset(
                  "images/emoji$rightEmoji.jpg",
                  height: 100,
                  width: 200,
                  fit: BoxFit.fitWidth,
                )),
          ),
        ],
      ),
    );
  }
}