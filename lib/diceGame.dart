import 'dart:math';

import 'package:flutter/material.dart';

class DiceGame extends StatefulWidget {
  const DiceGame({Key? key}) : super(key: key);

  @override
  _DiceGameState createState() => _DiceGameState();
}

class _DiceGameState extends State<DiceGame> {
  int _score=0;
  int _highestScore=0;
  int _index1=0;
  int _index2=0;
  int _totalDice=0;

  bool gameOver=false;
  bool restart=false;
  bool roll=true;
  final _pictureList=['images/d1.png','images/d2.png','images/d3.png','images/d4.png','images/d5.png','images/d6.png'];
  final random=Random.secure();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dice Game'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
           Text('Score : $_score',style: TextStyle(fontSize: 30),),
            Text('Hightest Score : $_highestScore',style: TextStyle(fontSize: 20),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset(_pictureList[_index1],width: 100,height: 100,),
                Image.asset(_pictureList[_index2],width: 100,height: 100,),
              ],
            ),
            Text('Total Dice Number : $_totalDice',style: TextStyle(fontSize: 25),),
            if(gameOver) Text('Game Over',style: TextStyle(fontSize: 35),),
            if(roll)ElevatedButton(
              child:Text('Roll',),
              onPressed:_RollTheDice ),
            if(restart)ElevatedButton(
                child:Text('Restart',),
                onPressed:_restartTheDice

             )
          ],
        ),
      ),
    );
  }


  void _RollTheDice() {
    setState(() {
      _index1=random.nextInt(6);
      _index2=random.nextInt(6);
      _totalDice=_index1+_index2+2;
      if(_totalDice==7){

        _score+=_totalDice;
        roll=false;
        if(_score>_highestScore){
          _highestScore=_score;
        }
        else{
          _highestScore=_highestScore;
        }
        gameOver=true;
        restart=true;


          }

      else{
        _score+=_totalDice;
         }
      }


      );
  }






  void _restartTheDice() {

      _index1=0;
      _index2=0;
      roll=true;
      gameOver=false;

      _RollTheDice();
      restart=false;
      _score=0;
      _totalDice=0;







  }
}