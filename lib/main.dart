import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dice'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(
        ),
      ),
    ),
  );
}


class DicePage extends StatefulWidget {
  const DicePage({Key key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  @override
  int diceNumber=1;
  int diceNumber2=1;
  Widget build(BuildContext context) {
void randomNumbers(){
  diceNumber=Random().nextInt(6)+1;
  diceNumber2=Random().nextInt(6)+1;
}
    return Container(
        child:Center(
          child: Row(
            children: [Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextButton(
                  onPressed: (){
                  setState(() {
                   randomNumbers();
                  });
                  },
                  style: TextButton.styleFrom(padding: EdgeInsets.all(0)),
                  child: Image.asset('images/dice$diceNumber.png'),),
              ),
            ),
              Expanded(
                child:Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextButton(
                      onPressed: (){
                        setState(() {
                        randomNumbers();
                        });
                      },
                      style: TextButton.styleFrom(padding: EdgeInsets.all(0),),
                      child: Image.asset('images/dice$diceNumber2.png')),
                ),
              ),],
          ),
        )
    );;
  }
}
