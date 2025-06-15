import 'package:eat_wisely/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'تطبيق السعرات',
      // theme: ThemeData(fontFamily: 'tajawal' ,), // خط عربي اختياري
      locale: Locale('ar'),
      supportedLocales: [
        Locale('ar'),
      ],
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      //  theme: ThemeData(
      //   fontFamily: 'Tajawal',
      //   scaffoldBackgroundColor: Colors.white,
      //   textTheme: TextTheme(
      //     bodyLarge: TextStyle(fontSize: 18),
      //     bodyMedium: TextStyle(fontSize: 16),
      //   ),
      // ),
      home: HomePage(),
    );
  }
}
