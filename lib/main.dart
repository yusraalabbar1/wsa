import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:wst/routs.dart';
// import 'package:easy_localization/easy_localization.dart';
// import 'package:flutter/services.dart';
// import 'package:country_picker/country_picker.dart';
// import 'package:flutter_localizations/flutter_localizations.dart';

Future<void> main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await EasyLocalization.ensureInitialized();
  // SystemChrome.setPreferredOrientations([
  //   DeviceOrientation.portraitUp,
  //   DeviceOrientation.portraitDown,
  // ]);
  // localizationsDelegates:
  // [
  //   CountryLocalizations.delegate,
  //   GlobalMaterialLocalizations.delegate,
  //   GlobalCupertinoLocalizations.delegate,
  //   GlobalWidgetsLocalizations.delegate,
  // ];
  runApp(
    MyApp(),
    // EasyLocalization(
    //   child: MyApp(),
    //   supportedLocales: [
    //     Locale('en', 'US'),
    //     Locale('ar', 'JO'),
    //   ],
    //   path: 'assets/languages',
    // ),
  );
}
