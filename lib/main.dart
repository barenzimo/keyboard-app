import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(MyApp());

// function for the ui of button
Expanded keyButton(int n, Color buttonColor) {
  return Expanded(
    child: TextButton(
      style: TextButton.styleFrom(backgroundColor: buttonColor),
      onPressed: () {
        final player = AudioCache();
        player.play('note$n.wav');
      },
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Audio player'),
            backgroundColor: Colors.black,
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              keyButton(1, Colors.red),
              keyButton(2, Colors.orange),
              keyButton(3, Colors.yellow),
              keyButton(4, Colors.blue),
              keyButton(5, Colors.green),
              keyButton(6, Colors.pink),
              keyButton(7, Colors.white),
            ],
          )),
    );
  }
}
