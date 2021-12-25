import 'package:flutter/material.dart';
import 'package:tictactoe/utilities/constants.dart';
import 'package:tictactoe/screens/gamescreen.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tic Tac Toe', style: KcustomStyle,),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            Navigator.pushReplacement<void, void>(
              context,
              MaterialPageRoute<void>(
                builder: (BuildContext context) =>  GameScreen(),
              ),
            );
          },
          child: Text('play'),
        ),
      ),
    );
  }
}
