import 'package:flutter/material.dart';

class GameOver extends StatelessWidget {

  final int score;

  GameOver({
    this.score
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Game over, score: $score'),
      ),
    );
  }
}