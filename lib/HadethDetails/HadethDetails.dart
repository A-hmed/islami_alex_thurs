
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_alex_thurs/Home/AhadethFragment.dart';
import 'package:islami_alex_thurs/Home/Widgets/HadethTitle.dart';

import '../main.dart';

class HadethDetails extends StatefulWidget {
  static String ROUTE_NAME='HadethDetails';
  @override
  _HadethDetailsState createState() => _HadethDetailsState();
}

class _HadethDetailsState extends State<HadethDetails> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    Hadeth args=ModalRoute.of(context)!.settings.arguments as Hadeth;
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/back_ground.png',),
              fit: BoxFit.fill)
      ),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            iconTheme: IconThemeData(
              color: MyThemeData.colorAccent, //change your color here
            ),
            elevation: 0,
            title: Text(args.title,style: TextStyle(color: MyThemeData.colorAccent),),
            backgroundColor: Colors.transparent,
            centerTitle:true,
          ),
          body: Container(
            padding: EdgeInsets.all(32),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color:  Color.fromRGBO(248,248, 248,.7),
            ),
            margin:EdgeInsets.only(left: 16,right: 16,
              bottom:MediaQuery.of(context).size.height*.1,
            ),
            child: ListView.separated(
              itemCount:args.hadethContent.length ,
              itemBuilder:(context,index){
                return Text(args.hadethContent[index],style: TextStyle(fontSize: 25),
                  textDirection: TextDirection.rtl,);
              },
              separatorBuilder: (context,index){
                return Container(
                  width: double.infinity,
                  height: 2,
                  color: MyThemeData.colorPrimary,
                );
              },
            ),
          )

      ),
    );
  }
}



