import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_alex_thurs/Home/Widgets/HadethTitle.dart';

import '../main.dart';
import 'Widgets/SuraName.dart';

class AhadethFragment extends StatefulWidget {
  @override
  _AhadethFragmentState createState() => _AhadethFragmentState();
}

class _AhadethFragmentState extends State<AhadethFragment> {
  List<Hadeth> ahadeth = [];

  @override
  Widget build(BuildContext context) {
    if(ahadeth.length==0){
      readSuraFile();
    }
    return Container(
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
                flex: 3,
                child: Image.asset('assets/images/hadethLogo.png')
            ),
            SizedBox(height:12 ,),
            Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                    border: Border.all(color: MyThemeData.colorPrimary,width: 2)
                ),
                child: Text('Ahadeth',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w600),textAlign: TextAlign.center,)
            ),
            SizedBox(height:12 ,),
            Expanded(flex: 7,
              child: ListView.separated(itemBuilder: (context,index){
                return HadethTitle(ahadeth[index]);
              }, separatorBuilder: (context,index){
                return Container(
                  width: double.infinity,
                  height: 2,
                  color: MyThemeData.colorPrimary,
                );
              }, itemCount: ahadeth.length),

            )
          ],
        ),
      ),
    );
  }

  void readSuraFile() async {
    String allAhadeth =
        await rootBundle.loadString('assets/content/ahadeth.txt');
    // print(allAhadeth);
    List<String> allAhadethList = allAhadeth.split('#\r\n');
    List<Hadeth>ahadeth=[];
    for (int i = 0; i < allAhadethList.length; i++) {
      String hadeth = allAhadethList[i];
      List<String> hadethLines = hadeth.split('\n');
      String title = hadethLines[0];

     ahadeth.add(Hadeth(
          title, hadethLines.getRange(1, hadethLines.length-1 ).toList()));
    }
    setState(() {
      this.ahadeth=ahadeth;
    });
  }
}

class Hadeth {
  String title;
  List<String> hadethContent;

  Hadeth(this.title, this.hadethContent);
}
