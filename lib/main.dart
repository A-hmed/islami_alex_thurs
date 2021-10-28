import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islami_alex_thurs/HadethDetails/HadethDetails.dart';
import 'package:islami_alex_thurs/Home/AhadethFragment.dart';
import 'package:islami_alex_thurs/Home/HomeScreen.dart';
import 'package:islami_alex_thurs/SplashScreen.dart';
import 'package:islami_alex_thurs/SuraDetails/SuraDetails.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
void main() {
  runApp(MyApp());
}
class MyThemeData{
  static Color colorPrimary=Color(0xffB7935F);
  static Color  colorAccent=Color(0xff242424);
  static Color colorPrimaryDark=Color(0xff141A2E);
  static Color  colorAccentDark=Color(0xffB7935F);
}
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en', ''), // English, no country code
        Locale('ar', ''), // Spanish, no country code
      ],
      locale:Locale('ar', '') ,
      theme: ThemeData(
        primaryColor: MyThemeData.colorPrimary,
        accentColor: MyThemeData.colorAccent,
      ),
        darkTheme: ThemeData(
          primaryColor: MyThemeData.colorPrimaryDark,
          accentColor: MyThemeData.colorAccentDark,
        ),
        themeMode: ThemeMode.system,
        title: 'Flutter Demo',
       routes: {
        SplashScreen.ROUTE_NAME:(context)=>SplashScreen(),
         HomeScreen.ROUTE_NAME:(context)=>HomeScreen(),
         SuraDetails.ROUTE_NAME:(context)=>SuraDetails(),
         HadethDetails.ROUTE_NAME:(context)=>HadethDetails()
       },
      initialRoute: SplashScreen.ROUTE_NAME,
    );
  }
}

