import 'package:flutter/material.dart';
import 'package:islami_alex_thurs/HadethDetails/HadethDetails.dart';
import 'package:islami_alex_thurs/SuraDetails/SuraDetails.dart';

import '../AhadethFragment.dart';

class HadethTitle extends StatelessWidget {
  Hadeth hadeth;
  HadethTitle(this.hadeth);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
           Navigator.pushNamed(context, HadethDetails.ROUTE_NAME,
               arguments:hadeth );

      },
      child: Container(
        padding: EdgeInsets.all(4),
        child: Text(hadeth.title,textAlign: TextAlign.center,style: TextStyle(fontSize: 25,
            fontWeight: FontWeight.bold),),
      ),
    );
  }
}
