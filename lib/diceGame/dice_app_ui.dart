import 'dart:math';

import 'package:flutter/material.dart';

class DiceAppUi extends StatefulWidget {
  const DiceAppUi({Key? key}) : super(key: key);

  @override
  _DiceAppUiState createState() => _DiceAppUiState();
}

class _DiceAppUiState extends State<DiceAppUi> {
  int leftDice = 1;
  int rightDice = 2;

  changeTheDice() {
    setState(() {
      rightDice = Random().nextInt(6) + 1;
      leftDice = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dice game"),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
            onTap: changeTheDice,
            child: Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.red,
                image: DecorationImage(
                  image: AssetImage('assets/images/dice$leftDice.png'),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: changeTheDice,
            child: Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.red,
                image: DecorationImage(
                  image: AssetImage('assets/images/dice$rightDice.png'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
