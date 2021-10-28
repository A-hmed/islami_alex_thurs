import 'package:flutter/material.dart';
import 'package:islami_alex_thurs/Home/AhadethFragment.dart';
import 'package:islami_alex_thurs/Home/QuranFragment.dart';
import 'package:islami_alex_thurs/Home/RadioFragment.dart';
import 'package:islami_alex_thurs/Home/TasbehFragment.dart';
import 'package:islami_alex_thurs/main.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class HomeScreen extends StatefulWidget {
  static String ROUTE_NAME = 'home';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex=1;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/back_ground.png',),
        fit: BoxFit.fill)
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          elevation: 0,
          title: Text(AppLocalizations.of(context)!.islami
            ,style: TextStyle(color: MyThemeData.colorAccent),),

          centerTitle:true,
        ),
        body:getMainView(),
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(canvasColor:Theme.of(context).primaryColor),
          child: BottomNavigationBar(
            currentIndex: currentIndex,
            onTap: (index){
              currentIndex=index;
              setState(() {

              });
            },
            selectedItemColor: MyThemeData.colorAccent,
            //showUnselectedLabels: false,
            //showSelectedLabels:false ,
            iconSize: 30,
            items: [
              BottomNavigationBarItem(
                  label: 'Quran',
                  icon: ImageIcon(AssetImage('assets/images/moshaf_gold.png'))),
              BottomNavigationBarItem(
                label: 'ahadeth',
                  icon: ImageIcon(AssetImage('assets/images/ahadeth.png'))),
              BottomNavigationBarItem(
                label: 'Tasbeh',
                  icon: ImageIcon(AssetImage('assets/images/sebha.png'))),
              BottomNavigationBarItem(
                label: 'radio',
                  icon: ImageIcon(AssetImage('assets/images/radio.png')))
            ],
          ),
        ),
      ),
    );
  }
  Widget getMainView(){
    if (currentIndex==0){
      return QuranFragment();
    }else if(currentIndex==1){
      return  AhadethFragment();
    }else if(currentIndex==2){
      return  TasbehFragment();
    }else if(currentIndex==3){
      return  RadioFragment();
    }
    else return Container();
  }
}
