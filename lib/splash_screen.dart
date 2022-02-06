import 'dart:async';

import 'package:flutter/material.dart';

import 'diceGame.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
        Duration(seconds:3),(){
      Navigator.push(context, MaterialPageRoute(builder: (Context)=>DiceGame()));

    }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red.shade800,

      body: Column(
        children: [
          /*Padding(
            padding: const EdgeInsets.only(top:100,left: 80,right: 100,bottom: 0),
            child: Image.asset('images/splash.png',width: 300,height: 300,),
          ),

           */
          Padding(
            padding: const EdgeInsets.only(left: 50, right: 50,top: 300,bottom: 10),
            child: Text('Let\'s Play',style: TextStyle(fontSize:30,color: Colors.white70),),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 100,right: 100,bottom: 0),
            child: LinearProgressIndicator(
              valueColor:AlwaysStoppedAnimation<Color>(Colors.white70),
              minHeight: 4,
              backgroundColor: Colors.black87,
            ),
          ),


        ],
      ),

    );
  }
}
