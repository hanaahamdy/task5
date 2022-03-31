//import 'dart:convert';
//
//
//import 'package:flutter/foundation.dart';
//import 'package:flutter/material.dart';
//import 'package:flutter/rendering.dart';
//import 'package:flutter/services.dart';
//
//class Localization
//{final Locale locale;
//
//  Localization(this.locale);
//
//
//
//static Localizations of(BuildContext context) {
//  return Localizations.of<Localizations>(context,Localizations)!;
//}
//Map<String, String>? _localizedValues;
//
//Future<void> load() async {
//  String jsonStringValues =
//  await rootBundle.loadString('lang/${locale.languageCode}.json');
//  Map<String, dynamic> mappedJson = json.decode(jsonStringValues);
//  _localizedValues = mappedJson.map((key, value) => MapEntry(key, value.toString()));
//}
//
//String translate(String key) {
//  return _localizedValues![key]!;
//}
//
//// static member to have simple access to the delegate from Material App
//static const LocalizationsDelegate<Localization> delegate = _LocalizationsDelegate();
//}
//
//class _LocalizationsDelegate
//    extends LocalizationsDelegate<Localization> {
//  const _LocalizationsDelegate();
//
//  @override
//  bool isSupported(Locale locale) {
//    return ['en','ar',].contains(locale.languageCode);
//  }
//
//  @override
//  Future<Localization> load(Locale locale) async {
//    Localization localization = new Localization(locale);
//    await localization.load();
//    return localization;
//  }
//
//  @override
//  bool shouldReload(LocalizationsDelegate<Localization> old) => false;
//
//}
//class DemoLocalizationsDelegate
//    extends LocalizationsDelegate<Localizations> {
//  const DemoLocalizationsDelegate();
//
//  @override
//  //bool isSupported(Locale locale) => Localizations.().contains(locale.languageCode);
//
//
////  @override
////  Future<Localizations> load(Locale locale) {
////    // Returning a SynchronousFuture here because an async "load" operation
////    // isn't needed to produce an instance of DemoLocalizations.
//    //return SynchronousFuture<Localizations>(Localization(locale));
//  }
//
//  @override
//  bool shouldReload(DemoLocalizationsDelegate old) => false;
//}