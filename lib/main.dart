import 'package:flutter/material.dart';
import 'package:TicTacToe/winningscreen.dart';
void main() => runApp(MaterialApp(
  home: Home(),
));

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int playerSwitch = 1;

  var tttPosition = List.generate(3, (i) => List(3), growable: false);

  void winCheck() {
    if(tttPosition[0][0] == 1 && tttPosition[1][1] == 1 && tttPosition[2][2] == 1){ //Linksboven naar rechtsonder // player 1
      navPush(1);
      reset();
    } 
    if(tttPosition[2][0] == 1 && tttPosition[1][1] == 1 && tttPosition[0][2] == 1){//Linksonder naar rechtsboven
      navPush(1);
      reset();
    }
    for(int i = 0; i < 3; i++){
      if(tttPosition[i][0] == 1 && tttPosition[i][1] == 1 && tttPosition[i][2] == 1){ //Links naar Rechts
        navPush(1);
        reset();
      }
      if(tttPosition[0][i] == 1 && tttPosition[1][i] == 1 && tttPosition[2][i] == 1){ //Boven naar onder
        navPush(1);
        reset();
      }
    }

    if(tttPosition[0][0] == 2 && tttPosition[1][1] == 2 && tttPosition[2][2] == 2){ //Linksboven naar rechtsonder // player 2
        navPush(2);
        reset();
    } 
    if(tttPosition[2][0] == 2 && tttPosition[1][1] == 2 && tttPosition[0][2] == 2){//Linksonder naar rechtsboven
        navPush(2);
        reset();
    }
    for(int i = 0; i < 3; i++){
      if(tttPosition[i][0] == 2 && tttPosition[i][1] == 2 && tttPosition[i][2] == 2){ //Links naar Rechts
        navPush(2);
        reset();
      }
      if(tttPosition[0][i] == 2 && tttPosition[1][i] == 2 && tttPosition[2][i] == 2){ //Boven naar onder
        navPush(2);
        reset();
      }
    }
  }

  void navPush(int winner) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Win(winner),));
  }


  void reset(){
    tttPosition[0] = [null,null,null];
    tttPosition[1] = [null,null,null];
    tttPosition[2] = [null,null,null];
    playerSwitch = 1;

  }

  // 00 01 02
  // 10 11 12 
  // 20 21 22

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tic Tac Toe"),
        centerTitle: true,
      ),
      body: Scaffold(
        body: Center(
          child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(height: 100.0, width: 100.0, child: RaisedButton(onPressed: () {setState(() { // 1
                      if(tttPosition[0][0] == null){
                        tttPosition[0][0] = playerSwitch;
                        winCheck();
                        if(playerSwitch == 1){
                          playerSwitch = 2;
                        }
                        else{
                          playerSwitch = 1;
                        }
                      }
                      
                      print(tttPosition);
                    });}, child: Center(child: tttPosition[0][0] != null ? Icon(tttPosition[0][0] == 1 ? Icons.clear : Icons.panorama_fish_eye, size: 75.0,) : SizedBox() ,)),),
                    SizedBox(height: 15.0),
                    Container(height: 100.0, width: 100.0, child: RaisedButton(onPressed: () {setState(() { //4
                      if(tttPosition[1][0] == null){
                        tttPosition[1][0] = playerSwitch;
                        winCheck();
                        if(playerSwitch == 1){
                          playerSwitch = 2;
                        }
                        else{
                          playerSwitch = 1;
                        }
                      }
                      print(tttPosition);
                    });}, child: Center(child: tttPosition[1][0] != null ? Icon(tttPosition[1][0] == 1 ? Icons.clear : Icons.panorama_fish_eye, size: 75.0,) : SizedBox() ,)),),
                    SizedBox(height: 15.0),
                      Container(height: 100.0, width: 100.0, child: RaisedButton(onPressed: () {setState(() { //7
                      if(tttPosition[2][0] == null){
                        tttPosition[2][0] = playerSwitch;
                        winCheck();
                        if(playerSwitch == 1){
                          playerSwitch = 2;
                        }
                        else{
                          playerSwitch = 1;
                        }
                      }
                      print(tttPosition);
                    });}, child: Center(child: tttPosition[2][0] != null ? Icon(tttPosition[2][0] == 1 ? Icons.clear : Icons.panorama_fish_eye, size: 75.0,) : SizedBox() ,)),),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(height: 100.0, width: 100.0, child: RaisedButton(onPressed: () {setState(() { //2
                      if(tttPosition[0][1] == null){
                        tttPosition[0][1] = playerSwitch;
                        winCheck();
                        if(playerSwitch == 1){
                          playerSwitch = 2;
                        }
                        else{
                          playerSwitch = 1;
                        }
                      }
                      
                      print(tttPosition);
                    });}, child: Center(child: tttPosition[0][1] != null ? Icon(tttPosition[0][1] == 1 ? Icons.clear : Icons.panorama_fish_eye, size: 75.0,) : SizedBox() ,)),),
                    SizedBox(height: 15.0),
                    Container(height: 100.0, width: 100.0, child: RaisedButton(onPressed: () {setState(() { //5
                      if(tttPosition[1][1] == null){
                        tttPosition[1][1] = playerSwitch;
                        winCheck();
                        if(playerSwitch == 1){
                          playerSwitch = 2;
                        }
                        else{
                          playerSwitch = 1;
                        }
                      }
                      
                      print(tttPosition);
                    });}, child: Center(child: tttPosition[1][1] != null ? Icon(tttPosition[1][1] == 1 ? Icons.clear : Icons.panorama_fish_eye, size: 75.0,) : SizedBox() ,)),),
                    SizedBox(height: 15.0),
                    Container(height: 100.0, width: 100.0, child: RaisedButton(onPressed: () {setState(() { //8
                      if(tttPosition[2][1] == null){
                        tttPosition[2][1] = playerSwitch;
                        winCheck();
                        if(playerSwitch == 1){
                          playerSwitch = 2;
                        }
                        else{
                          playerSwitch = 1;
                        }
                      }
                      
                      print(tttPosition);
                    });}, child: Center(child: tttPosition[2][1] != null ? Icon(tttPosition[2][1] == 1 ? Icons.clear : Icons.panorama_fish_eye, size: 75.0,) : SizedBox() ,)),),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(height: 100.0, width: 100.0, child: RaisedButton(onPressed: () {setState(() { //3
                      if(tttPosition[0][2] == null){
                        tttPosition[0][2] = playerSwitch;
                        winCheck();
                        if(playerSwitch == 1){
                          playerSwitch = 2;
                        }
                        else{
                          playerSwitch = 1;
                        }
                      }
                      
                      print(tttPosition);
                    });}, child: Center(child: tttPosition[0][2] != null ? Icon(tttPosition[0][2] == 1 ? Icons.clear : Icons.panorama_fish_eye, size: 75.0,) : SizedBox() ,)),),
                    SizedBox(height: 15.0),
                    Container(height: 100.0, width: 100.0, child: RaisedButton(onPressed: () {setState(() { //6
                      if(tttPosition[1][2] == null){
                        tttPosition[1][2] = playerSwitch;
                        winCheck();
                        if(playerSwitch == 1){
                          playerSwitch = 2;
                        }
                        else{
                          playerSwitch = 1;
                        }
                      }
                      
                      print(tttPosition);
                    });}, child: Center(child: tttPosition[1][2] != null ? Icon(tttPosition[1][2] == 1 ? Icons.clear : Icons.panorama_fish_eye, size: 75.0,) : SizedBox() ,)),),
                    SizedBox(height: 15.0),
                    Container(height: 100.0, width: 100.0, child: RaisedButton(onPressed: () {setState(() { //9
                      if(tttPosition[2][2] == null){
                        tttPosition[2][2] = playerSwitch;
                        winCheck();
                        if(playerSwitch == 1){
                          playerSwitch = 2;
                        }
                        else{
                          playerSwitch = 1;
                        }
                      }
                      
                      print(tttPosition);
                    });}, child: Center(child: tttPosition[2][2] != null ? Icon(tttPosition[2][2] == 1 ? Icons.clear : Icons.panorama_fish_eye, size: 75.0,) : SizedBox() ,)),),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(child: Text("Reset"), onPressed: () {setState(() {
        reset();
      });},),
    );
  }
}