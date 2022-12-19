import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/detective.dart';
import 'package:square_percent_indicater/square_percent_indicater.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(4.0),
          child: DelayedDisplay(
              delay: Duration(milliseconds: 100),
              child: Image.asset('assets/images/profile.png')),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 12),
            child: DelayedDisplay(
                delay: Duration(milliseconds: 200),
                child: Image.asset('assets/images/search.png')),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const DelayedDisplay(
              delay: Duration(milliseconds: 350),
              child: Text('Hey, Andera',style: TextStyle(
                  fontSize: 16
              ),),
            ),
            SizedBox(height: 10,),
            const DelayedDisplay(
              delay: Duration(milliseconds: 450),
              child: Text('Have a fun game',style: TextStyle(
                  fontSize: 28,fontWeight: FontWeight.w900,letterSpacing: 1
              ),),
            ),
            DelayedDisplay(
              delay: Duration(milliseconds: 550),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 25.0),
                child: Container(
                  height: 150,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Row(
                      children:    [
                        RotatedBox(
                          quarterTurns: 3,
                          child: SquarePercentIndicator(
                            width: 80,
                            height: 80,
                            startAngle: StartAngle.topRight,
                            reverse: false,
                            borderRadius: 30,
                            shadowWidth: 5,
                            progressWidth: 7,
                            shadowColor:Color(0xff5869ff).withOpacity(0.3),
                            progressColor: Color(0xff5869ff),
                            progress: 0.85,

                          ),
                        ),
                        SizedBox(width: 25,),
                        DelayedDisplay(
                          delay: Duration(milliseconds: 1000),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:const [
                              Text('Want to explore\nevery country?',style: TextStyle(
                                  fontSize: 18,fontWeight: FontWeight.bold
                              ),),
                              SizedBox(height: 10,),
                              Text('You know 172 countries',style: TextStyle(
                                  fontSize: 12,fontWeight: FontWeight.w500,color: Colors.grey
                              ),),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),

            DelayedDisplay(
                delay: Duration(milliseconds: 1200),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:const [
                    Text('Games',style: TextStyle(fontSize: 28,fontWeight: FontWeight.w900),),
                    Text('View all',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500,color: Colors.grey),)
                  ],
                )),
            DelayedDisplay(
                delay: Duration(milliseconds: 1350),
                child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15.0),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5.0),
                            child: Container(
                              height: 250,
                              width: 175,
                              decoration: BoxDecoration(
                                color: Colors.cyan.shade100.withOpacity(0.4),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(18.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text('Lv. 3',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 16),),
                                    Center(child: Image.asset('assets/images/camera.png',height: 80,)),
                                    SizedBox(height: 15,),
                                    Text('Photographer',style: TextStyle(
                                        fontSize: 20,fontWeight: FontWeight.w900
                                    ),),
                                    SizedBox(height: 6,),
                                    Text('Know the country?',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15,color: Colors.grey),),
                                    SizedBox(height: 15,),
                                    Container(
                                      height: 10,
                                      width: 165,
                                      decoration: BoxDecoration(
                                        color: Colors.grey.shade300,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Row(
                                        children: [
                                          Container(
                                            height: 10,
                                            width: 50,
                                            decoration: BoxDecoration(
                                              color: Colors.cyan.shade600,
                                              borderRadius: BorderRadius.circular(10),),)],),),],),),),
                          ),
                          InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (_)=>const DetectivePage()));
                            },
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 5.0),
                              child: Container(
                                height: 250,
                                width: 175,
                                decoration: BoxDecoration(
                                  color: Colors.greenAccent.shade100.withOpacity(0.2),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(18.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text('Lv. 6',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 16),),
                                      Center(child: Image.asset('assets/images/compass.png',height: 100,)),
                                      SizedBox(height: 15,),
                                      Text('Detective',style: TextStyle(
                                          fontSize: 20,fontWeight: FontWeight.w900),),
                                      SizedBox(height: 6,),
                                      Text('Find the country?',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15,color: Colors.grey),),
                                      SizedBox(height: 15,),
                                      Container(
                                        height: 10,
                                        width: 165,
                                        decoration: BoxDecoration(
                                          color: Colors.grey.shade300,
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        child: Row(
                                          children: [
                                            Container(
                                              height: 10,
                                              width: 100,
                                              decoration: BoxDecoration(
                                                color: Colors.greenAccent,
                                                borderRadius: BorderRadius.circular(10),),)],),),],),),),),
                          ),

                        ],
                      ),
                    )
                )),

          ],
        ),
      ),
    );
  }
}
