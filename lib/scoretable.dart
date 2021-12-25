import 'package:flutter/material.dart';
import 'package:tictactoe/utilities/constants.dart';

class ScoreTable extends StatelessWidget {
  int playerXscore = 0;
  int playerOscore = 0;
  ScoreTable({required this.playerXscore, required this.playerOscore});

  void setScoreX(int score){
    playerXscore = score;
  }
  void setScoreO (int score){
    playerOscore = score;
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            child: Column(
              children: [
                Text(
                  'Player X',
                  style: KcustomStyle,
                ),
                Text(
                  '$playerXscore',
                  style: KcustomStyle,
                )
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                Text(
                  'Player O',
                  style: KcustomStyle,
                ),
                Text(
                  '$playerOscore',
                  style: KcustomStyle,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
