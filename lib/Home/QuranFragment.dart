import 'package:flutter/material.dart';
import 'package:islami_alex_thurs/Home/Widgets/SuraName.dart';
import 'package:islami_alex_thurs/main.dart';

class QuranFragment extends StatelessWidget {
  List<String> surasName=["الفاتحه", "البقرة", "آل عمران", "النساء", "المائدة", "الأنعام", "الأعراف", "الأنفال", "التوبة", "يونس", "هود"
    , "يوسف", "الرعد", "إبراهيم", "الحجر", "النحل", "الإسراء", "الكهف", "مريم", "طه", "الأنبياء", "الحج", "المؤمنون"
    , "النّور", "الفرقان", "الشعراء", "النّمل", "القصص", "العنكبوت", "الرّوم", "لقمان", "السجدة", "الأحزاب", "سبأ"
    , "فاطر", "يس", "الصافات", "ص", "الزمر", "غافر", "فصّلت", "الشورى", "الزخرف", "الدّخان", "الجاثية", "الأحقاف"
    , "محمد", "الفتح", "الحجرات", "ق", "الذاريات", "الطور", "النجم", "القمر", "الرحمن", "الواقعة", "الحديد", "المجادلة"
    , "الحشر", "الممتحنة", "الصف", "الجمعة", "المنافقون", "التغابن", "الطلاق", "التحريم", "الملك", "القلم", "الحاقة", "المعارج"
    , "نوح", "الجن", "المزّمّل", "المدّثر", "القيامة", "الإنسان", "المرسلات", "النبأ", "النازعات", "عبس", "التكوير", "الإنفطار"
    , "المطفّفين", "الإنشقاق", "البروج", "الطارق", "الأعلى", "الغاشية", "الفجر", "البلد", "الشمس", "الليل", "الضحى", "الشرح"
    , "التين", "العلق", "القدر", "البينة", "الزلزلة", "العاديات", "القارعة", "التكاثر", "العصر",
    "الهمزة", "الفيل", "قريش", "الماعون", "الكوثر", "الكافرون", "النصر", "المسد", "الإخلاص", "الفلق", "الناس"
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              flex: 3,
              child: Image.asset('assets/images/quran_logo.png')
          ),
          SizedBox(height:12 ,),
          Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              border: Border.all(color: MyThemeData.colorPrimary,width: 2)
            ),
            child: Text('SuraName',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w600),textAlign: TextAlign.center,)
          ),
          SizedBox(height:12 ,),
          Expanded(flex: 7,
          child: ListView.separated(itemBuilder: (context,index){
               return SuraName(surasName[index],index);
          }, separatorBuilder: (context,index){
             return Container(
               width: double.infinity,
               height: 2,
               color: MyThemeData.colorPrimary,
             );
          }, itemCount: surasName.length),

          )
        ],
      ),
    );
  }
}
