import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  DicePage({Key key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {

  int leftDiceNumber= 1;
  int rightDiceNumber=1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              child: Image.asset('images/dice$leftDiceNumber.png'),
              onPressed: (){
                 setState(() {
                  leftDiceNumber=Random().nextInt(6)+1; // 1-5
                  rightDiceNumber=Random().nextInt(6)+1;
                 },
                );
              },
            ),
          ),
          Expanded(
            child: FlatButton(
              child: Image.asset('images/dice$rightDiceNumber.png'),
              onPressed: (){
                 setState(() {
                  rightDiceNumber=Random().nextInt(6)+1;// every number is going to be plus 1 (0+1,1+1,2+2...,5+1), [here 6 means (0-5)]
                  leftDiceNumber=Random().nextInt(6)+1;
                 },
                );
              },
            ),
          ),
        ],
      ),
    );
    }
  }