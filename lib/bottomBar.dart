import 'package:flutter/material.dart';
import 'package:flutter_tutorial/home_page.dart';

class BottomBars extends StatefulWidget {
  const BottomBars({Key? key}) : super(key: key);

  @override
  State<BottomBars> createState() => _BottomBarsState();
}

class _BottomBarsState extends State<BottomBars> {
  int index = 0;
  final PageStorageBucket _bucket = PageStorageBucket();
  Widget currentScreen = HomePage();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      resizeToAvoidBottomInset: false,
      body: WillPopScope(
        onWillPop: (){
          return Future.value(false);
        },
        child: ScrollConfiguration(
          behavior: const ScrollBehavior(),
          child: GlowingOverscrollIndicator(
            axisDirection: AxisDirection.down,
            color: Color(0xff675492),
            child: PageStorage(
              bucket: _bucket,
              child: currentScreen,
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        color: Colors.white,
        shape: CircularNotchedRectangle(),
        notchMargin: 8,
        child: SizedBox(
          height: 60,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: EdgeInsets.only(left: 6,right: 6),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MaterialButton(onPressed: (){
                  setState(() {
                    index = 0;
                    currentScreen = HomePage();
                  });
                },
                child: Image.asset('assets/images/game.png',
                color: index == 0? Color(0xff5869ff):Colors.grey,height: 22,
                ),
                ),
                MaterialButton(onPressed: (){
                  setState(() {
                    index = 1;
                    currentScreen = HomePage();
                  });
                },
                  child: Image.asset('assets/images/compas.png',
                    color: index == 1? Color(0xff5869ff):Colors.grey,height: 22,
                  ),
                ),
                MaterialButton(onPressed: (){
                  setState(() {
                    index = 2;
                    currentScreen = HomePage();
                  });
                },
                  child: Image.asset('assets/images/mail.png',
                    color: index == 2? Color(0xff5869ff):Colors.grey,height: 22,
                  ),
                ),

                MaterialButton(onPressed: (){
                  setState(() {
                    index = 3;
                    currentScreen = HomePage();
                  });
                },
                  child: Image.asset('assets/images/user.png',
                    color: index == 3? Color(0xff5869ff):Colors.grey,height: 22,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
