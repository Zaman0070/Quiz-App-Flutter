import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';

class StartGame extends StatefulWidget {
  const StartGame({Key? key}) : super(key: key);

  @override
  State<StartGame> createState() => _StartGameState();
}

class _StartGameState extends State<StartGame> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          DelayedDisplay(
            delay: Duration(milliseconds: 100),
            child: Image.asset('assets/images/map.png',),
          ),
         const DelayedDisplay(
            delay: Duration(milliseconds: 250),
            child: Text('What country is \nshown on the map?',textAlign: TextAlign.center,style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.w900
            ),)
          ),
          SizedBox(height: 15,),
          DelayedDisplay(
            delay: Duration(milliseconds: 500),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
              child: Container(
                height: 75,
                width: 340,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.grey.shade200
                ),
                child:const Center(
                  child: Text('Tanzania',style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,fontWeight: FontWeight.bold
                  ),),
                ),
              ),
            )
          ),
          DelayedDisplay(
              delay: Duration(milliseconds: 750),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                child: Container(
                  height: 75,
                  width: 340,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Color(0xffd5f224)
                  ),
                  child:const Center(
                    child: Text('DR Congo',style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,fontWeight: FontWeight.bold
                    ),),
                  ),
                ),
              )
          ),
          DelayedDisplay(
              delay: Duration(milliseconds: 1000),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                child: Container(
                  height: 75,
                  width: 340,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.grey.shade200
                  ),
                  child:const Center(
                    child: Text('Angola',style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,fontWeight: FontWeight.bold
                    ),),
                  ),
                ),
              )
          )
        ],
      ),
    );
  }
}
