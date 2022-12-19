import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/start_game.dart';

class DetectivePage extends StatefulWidget {
  const DetectivePage({Key? key}) : super(key: key);

  @override
  State<DetectivePage> createState() => _DetectivePageState();
}

class _DetectivePageState extends State<DetectivePage> {
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      body: Stack(
        children: [
          Positioned(
              top: -90,
              right: -80,
              child: DelayedDisplay(
                  delay: Duration(milliseconds: 100),
                  child: Image.asset('assets/images/compass.png'))),
          Positioned(
            top: 70,
            left: 25,
            child: DelayedDisplay(
              delay: Duration(milliseconds: 250),
              child: Container(
                height: 45,
                width: 45,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                      color: Colors.grey.shade300,
                      width: 1.5
                  ),
                ),
                child: Icon(Icons.arrow_back_ios_new,size: 20,),
              ),
            ),
          ),
          Positioned(
              top: 180,
              left: 25,
              child: DelayedDisplay(
                delay: Duration(milliseconds: 450),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('How\nmany countries\ndo you know?',style: TextStyle(
                        fontWeight: FontWeight.w900,fontSize: 45
                    ),),
                    SizedBox(height: 10,),
                    const Text('This game has very simple rules.',style: TextStyle(
                        fontWeight: FontWeight.w500,fontSize: 18,color: Colors.grey
                    ),),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children:const [
                              Text('1',style: TextStyle(fontSize: 70,color: Color(0xffd5f224),fontWeight: FontWeight.w900),),
                              SizedBox(width: 20,),
                              Text('Guess which country is the\nchosen map.',style: TextStyle(
                                fontWeight: FontWeight.w500,fontSize: 18,
                              ),),
                            ],
                          ),
                          Row(
                            children:const [
                              Text('2',style: TextStyle(fontSize: 70,color: Color(0xffd5f224),fontWeight: FontWeight.w900),),
                              SizedBox(width: 20,),
                              Text('Answer the suggestion questions\nabout this country.',style: TextStyle(
                                fontWeight: FontWeight.w500,fontSize: 18,),),],),
                          Row(
                            children:const [
                              Text('3',style: TextStyle(fontSize: 70,color: Color(0xffd5f224),fontWeight: FontWeight.w900),),
                              SizedBox(width: 20,),
                              Text('Earn 25 points for each correct\nanswer.',style: TextStyle(
                                fontWeight: FontWeight.w500,fontSize: 18,),),],),
                          InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (_)=>const StartGame()));
                            },
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 20.0),
                              child: Container(
                                height: 100,
                                width: 340,
                                decoration: BoxDecoration(
                                  color: Color(0xff5869ff),
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: const Center(
                                  child: Text('Start the game',style: TextStyle(
                                      fontSize: 20,color: Colors.white),),),),),
                          ),],),),

                  ],
                ),
              )
          ),
        ],
      ),
    );
  }
}
