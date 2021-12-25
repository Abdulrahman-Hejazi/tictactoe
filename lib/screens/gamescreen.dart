import 'package:flutter/material.dart';
import '../utilities/constants.dart';
import 'package:tictactoe/screens/homepage.dart';
import 'package:tictactoe/scoretable.dart';
import 'package:tictactoe/wincheck.dart';
import 'package:tictactoe/screens/winscreen.dart';


// ignore: must_be_immutable
class GameScreen extends StatefulWidget {
  static bool turnOfX = true;

  static int playerXscore = 0;
  static int playerOscore = 0;

  List<String> slots = [
    ' ', ' ', ' ',
    ' ', ' ', ' ',
    ' ', ' ', ' ',
  ];

  GameScreen({Key? key}) : super(key: key);

  void tapped(int i) {
    if (slots[i] == ' ') {
      slots[i] = GameScreen.turnOfX ? 'X' : 'O';
      switchTurns();
    }
  }

  void switchTurns() {
    if (turnOfX) {
      turnOfX = false;
    } else {
      turnOfX = true;
    }
  }

  @override
  _GameScreenState createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  @override
  Widget build(BuildContext context) {
    print(widget.slots);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(flex: 1,child: IconButton(
                onPressed: (){
                  Navigator.pushReplacement<void, void>(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) =>  HomePage(),
                    ),
                  );
                },
                icon: Icon(Icons.arrow_back))),

            Expanded(
              flex: 5,
              child: Center(
                child: Text(
                  'Tic Tac Toe',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
        actions: [
          IconButton(onPressed: () {
          setState(() {
            widget.slots = [
              ' ', ' ', ' ',
              ' ', ' ', ' ',
              ' ', ' ', ' ',
            ];
            GameScreen.turnOfX = true;
          });

        }, icon: Icon(Icons.refresh))],
        backgroundColor: KbackgroundColor,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ScoreTable(
            playerXscore: GameScreen.playerXscore,
            playerOscore: GameScreen.playerOscore,
          ),


          Expanded(
            flex: 5,
            child: GridView.builder(
                shrinkWrap: true,
                itemCount: 9,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3),
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        widget.tapped(index);
                        String result = checkWin(widget.slots) ;
                        if (result != '-1'){
                          result == 'X'? GameScreen.playerXscore++ : GameScreen.playerOscore++;
                          GameScreen.turnOfX = true;
                          Navigator.pushReplacement<void, void>(
                            context,
                            MaterialPageRoute<void>(
                              builder: (BuildContext context) =>  WinScreen(result),
                            ),
                          );

                        }
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white, width: 1)),
                      child: Center(
                        child: Text(
                          widget.slots[index],
                          style: TextStyle(fontSize: 46, color: widget.slots[index] == 'X' ? KXcolor : KOcolor),
                        ),
                      ),
                    ),
                  );
                }),
          ),

          Expanded(
            flex: 1,
            child: Center(
              child: Text(
                GameScreen.turnOfX ? 'Turn of X' : 'Turn of O',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
