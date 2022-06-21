import 'package:SnakeGameFlutter/game_page.dart';
import 'package:flutter/material.dart';

class GameOver extends StatelessWidget {

  final int? score;

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
ElevatedButton(
            

           style: ElevatedButton.styleFrom(
                primary: Colors.red,
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                textStyle: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold)),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => GamePage()));
              },
           
              child: Text("Try Again", style: TextStyle(color: Colors.white, fontSize: 20.0))
            ),
            
          ],
        ),
      )
    );
  }
}