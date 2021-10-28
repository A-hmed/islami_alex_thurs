import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_alex_thurs/Home/Widgets/SuraName.dart';

import '../main.dart';

class SuraDetails extends StatefulWidget {

  static String ROUTE_NAME='SuraDetails';

  @override
  _SuraDetailsState createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  List<String> suraLines=[];


   @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    SuraDetailsArgs args=ModalRoute.of(context)!.settings.arguments as SuraDetailsArgs;
   if(suraLines.length==0) readSuraFile('assets/content/'+args.index.toString()+'.txt');
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
          title: Text(args.suraName,style: TextStyle(color: MyThemeData.colorAccent),),
          backgroundColor: Colors.transparent,
          centerTitle:true,
        ),
        body: getMainView()

      ),
    );
  }
   Widget getMainView(){
     if(suraLines.length!=0){
       return Container(
         padding: EdgeInsets.all(32),
         decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(16),
           color:  Color.fromRGBO(248,248, 248,.7),
         ),
         margin:EdgeInsets.only(left: 16,right: 16,
             bottom:MediaQuery.of(context).size.height*.1,
              ),
         child: ListView.separated(
           itemCount:suraLines.length ,
           itemBuilder:(context,index){
             return Text(suraLines[index],style: TextStyle(fontSize: 25),
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
       );
     }else {
       return Center(child: CircularProgressIndicator());
     }
   }
  void readSuraFile(String fileName) async{
    print(fileName);
    String suraContent= await rootBundle.loadString(fileName);
    print(suraContent);
    suraLines =suraContent.split('\n');
    setState(() {

    });
  }
}
