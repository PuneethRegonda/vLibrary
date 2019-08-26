import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vlibrary1/mainScreen.dart';
class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin{
  AnimationController controller;
  Animation<double> animation;

  @override
  void initState() {
    controller = new AnimationController(vsync: this,duration: const Duration(seconds: 3));
    animation = new Tween(
      begin: 0.0,end: 1.0,
    ).animate(controller);
    super.initState();
    controller.forward().then((_){
      Navigator.of(context).pushReplacement(CupertinoPageRoute(builder: (BuildContext context) =>MainScreen()));   });
  }
  
  @override
  Widget build(BuildContext context) {
    return FadeTransition(
          opacity: animation,
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
   
               Center(
              child: SizedBox(
                height: MediaQuery.of(context).size.width*0.5,
                width: MediaQuery.of(context).size.width*0.5,
                child: Image.asset("images/vishnu.png")),
            ),
        Padding(
          padding: const EdgeInsets.only(top:20.0),
          child: Text(
          "BVRITN Library",
          style: TextStyle(fontFamily: "bebas-neue", fontSize: MediaQuery.of(context).size.width*0.05),
          ),
        ),
        
        // Text(" The library is the temple of learning, and learning has liberated more people than all the wars in history", style: TextStyle(
        //   fontFamily: "bebas-neue",fontSize: 20),)
        ],
      ),
    );
  }
}