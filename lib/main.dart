import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

import 'category_screen.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
//  await translator.init(
//    localeType: LocalizationDefaultType.device,
//    languagesList: <String>['ar', 'en'],
//    assetsDirectory: 'asset/lang/',
//  );
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: TextTheme(headlineLarge: TextStyle(color: Colors.black45)),
        appBarTheme: AppBarTheme(
          elevation: 0,
        ),
        primarySwatch: Colors.orange,
      ),
      home: CategoryScreen(),
supportedLocales: [Locale("en","US"),Locale("ar","SA")],
//      localizationsDelegates: translator.delegates, // Android + iOS Delegates
//      locale: translator.locale, // Active locale
//      supportedLocales: translator.locals(),
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ]);
  }
}
