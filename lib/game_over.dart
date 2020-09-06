import 'package:SnakeGameFlutter/game_page.dart';
import 'package:flutter/material.dart';

class GameOver extends StatelessWidget {

  final int score;

  GameOver({
    this.score
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.blue,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Game Over', style: TextStyle(color: Colors.redAccent, fontSize: 50.0, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic, shadows: [
                Shadow( // bottomLeft
                  offset: Offset(-1.5, -1.5),
                  color: Colors.black
                ),
                Shadow( // bottomRight
                  offset: Offset(1.5, -1.5),
                  color: Colors.black
                ),
                Shadow( // topRight
                  offset: Offset(1.5, 1.5),
                  color: Colors.black
                ),
                Shadow( // topLeft
                  offset: Offset(-1.5, 1.5),
                  color: Colors.black
                ),
              ])
            ),
            
            SizedBox(height: 50.0),

            Text('Your Score is: $score', style: TextStyle(color: Colors.white, fontSize: 20.0)),

            SizedBox(height: 50.0),

            FlatButton.icon(
              padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
              color: Colors.redAccent,
              onPressed: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => GamePage()));
              },
              icon: Icon(Icons.refresh, color: Colors.white, size: 30.0),
              label: Text("Try Again", style: TextStyle(color: Colors.white, fontSize: 20.0))
            ),
          ],
        ),
      )
    );
  }
}