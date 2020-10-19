import 'package:flutter/material.dart';

class Win extends StatefulWidget {

  Win(this.winner);
  final int winner;
  @override
  _WinState createState() => _WinState();
}

class _WinState extends State<Win> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tic Tac Toe"),
        centerTitle: true,
      ),
      body: Scaffold(
        body: Center(
          child: 
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
          Text("Winner is", style: TextStyle(fontSize: 75.0),),
          Icon(widget.winner == 1 ? Icons.clear : Icons.panorama_fish_eye, size: 100.0,)
        ],
      ),
      ),
      ),
    );
  }
}