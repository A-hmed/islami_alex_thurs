import 'package:flutter/material.dart';
import 'package:islami_alex_thurs/Home/HomeScreen.dart';

class SplashScreen extends StatelessWidget {
   static String ROUTE_NAME='splash';
  @override
  Widget build(BuildContext context) {
    NavigateToHome(context);
    return Scaffold(
      body: Container(
             width: double.infinity,
             height: double.infinity,
             child:Image.asset('assets/images/splash.png',fit: BoxFit.fill,),
      ),
    );

  }
  void NavigateToHome(BuildContext context){

    Future.delayed(Duration(seconds: 2),(){
      Navigator.pushReplacementNamed(context,HomeScreen.ROUTE_NAME);
    });
  }
}
