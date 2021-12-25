import 'package:flutter/material.dart';
import 'package:tictactoe/utilities/constants.dart';
import 'package:tictactoe/screens/gamescreen.dart';
import 'package:tictactoe/main.dart';

class WinScreen extends StatelessWidget {
  WinScreen(this.winner);
  final String winner;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KbackgroundColor,
      appBar: AppBar(
        title: Center(
            child: Text(
          'Congratulations',
          style: TextStyle(fontSize: 24),
        )),
        backgroundColor: KbackgroundColor,
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Text(
            'the Winner is $winner',
            style: KcustomStyle.copyWith(fontSize: 32),
          )),
          SizedBox(
            height: 50,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement<void, void>(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) =>  GameScreen(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Color(0XFF575656),
              ),
              child: Text(
                'Play again',
                style: KcustomStyle.copyWith(fontSize: 26, color: Colors.white,fontWeight: FontWeight.w800),
              )),
        ],
      ),
    );
  }
}
