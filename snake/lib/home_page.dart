import 'package:snake/game_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Colors.white,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(children: [
                  Container(
                    padding: const EdgeInsets.all(20),
                    child: Image.asset('assets/snake_game.jpg'),
                  ),
                  SizedBox(height: 50.0),
                  Text('Welcome to Classic Snake',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 40.0,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center),
                  SizedBox(height: 50.0),
                ]),
                Container(
                  padding: const EdgeInsets.all(5),
                  color: Colors.lightGreen[600],
                  child: TextButton.icon(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => GamePage()));
                      },
                      icon: Icon(Icons.play_circle_filled,
                          color: Colors.black, size: 30.0),
                      label: Text("Start the Game...",
                          style:
                              TextStyle(color: Colors.black, fontSize: 20.0))),
                )
              ])),
    );
  }
}
