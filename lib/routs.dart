import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wst/thems.dart';
import 'package:wst/view/auth/page/forgetPassword/cofirm_code.dart';
import 'package:wst/view/auth/page/signup/complet_signup.dart';
import 'package:wst/view/auth/page/signup/final_signup.dart';
import 'package:wst/view/auth/page/forgetPassword/pin_code_password.dart';
import 'package:wst/view/auth/page/signup/start_signup.dart';
import 'package:wst/view/auth/page/login/old_login.dart';
import 'package:wst/view/auth/page/forgetPassword/password_new.dart';
import 'package:wst/view/auth/page/forgetPassword/reset_code_password.dart';
import 'package:wst/view/auth/page/signup/signup.dart';
import 'package:wst/view/auth/page/start_page.dart';

import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:wst/view/other/agentsScreens/info_agent.dart';
import 'package:wst/view/other/competitionsScreens/competitions_main.dart';
import 'package:wst/view/other/competitionsScreens/complet_person_sub.dart';
import 'package:wst/view/other/competitionsScreens/info_compit.dart';
import 'package:wst/view/other/competitionsScreens/widget_page_compititoion.dart';
import 'package:wst/view/other/competitionsScreens/person_sub.dart';
import 'package:wst/view/other/homeMainScreens/recive/chois_receive.dart';
import 'package:wst/view/other/homeMainScreens/send/complet_send_money.dart';
import 'package:wst/view/other/homeMainScreens/details_winner.dart';
import 'package:wst/view/other/homeMainScreens/recive/code.dart';
import 'package:wst/view/other/homeMainScreens/recive/compleRecive.dart';
import 'package:wst/view/other/homeMainScreens/recive/gallary.dart';
import 'package:wst/view/other/homeMainScreens/recive/qr.dart';
import 'package:wst/view/other/homeMainScreens/send/sendMony.dart';
import 'package:wst/view/other/home_page.dart';
import 'package:wst/view/other/register1Screens/register1_main.dart';
import 'package:wst/view/other/setting/notification/sitting_notification.dart';
import 'package:wst/view/other/setting/profile/sitting_profile.dart';
import 'package:wst/view/other/setting/secutity/sitting_security.dart';

import 'view/auth/page/forgetPassword/email_for_forgetpassword.dart';
import 'view/auth/page/signup/Pin_code_verification_screen.dart';
import 'view/other/competitionsScreens/info_vote.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: startPage(),
      theme: CustomTheme.lightTheme,
      routes: {
        "startPage": ((context) => startPage()),
        "login": ((context) => login()),
        "signup": ((context) => signup()),
        "completSignUp": ((context) => completSignUp()),
        "passwordNew": ((context) => passwordNew()),
        "finalLogin": ((context) => finalLogin()),
        "oldLogin": ((context) => oldLogin()),
        "resetCodePassword": ((context) => resetCodePassword()),
        "confirmCodeUsingMobile": ((context) => confirmCodeUsingMobile()),
        "homePage": ((context) => homePage()),
        "pinPassword": ((context) => pinPassword()),
        "PinCodeVerificationScreen": ((context) => PinCodeVerificationScreen()),
        "emailForForgetPassword": ((context) => emailForForgetPassword()),
        "sittingProfile": ((context) => sittingProfile()),
        "sittingSecurity": ((context) => sittingSecurity()),
        "sittingNotification": ((context) => sittingNotification()),
        "infoCompet": ((context) => infoCompet()),
        // "infoAgent": ((context) => infoAgent()),
        "personSub": ((context) => personSub()),
        "completPersonSub": ((context) => completPersonSub()),
        "infoVote": ((context) => infoVote()),
        "detailsWinner": ((context) => detailsWinner()),
        "competitionsMain": ((context) => competitionsMain()),
        "sendMony": ((context) => sendMony()),
        "CompletsendMoney": ((context) => CompletsendMoney()),
        "choisReceive": ((context) => choisReceive()),
        "code": ((context) => code()),
        "completRecive": ((context) => completRecive()),
        "qr": ((context) => qr()),
        "gallary": ((context) => gallary()),
        "register1Main": ((context) => register1Main()),
      },
      supportedLocales: [
        const Locale('en'),
        const Locale('ar'),
        const Locale('es'),
        const Locale('el'),
        const Locale('et'),
        const Locale('nb'),
        const Locale('nn'),
        const Locale('pl'),
        const Locale('pt'),
        const Locale('ru'),
        const Locale('hi'),
        const Locale('ne'),
        const Locale('uk'),
        const Locale('hr'),
        const Locale('tr'),
        const Locale.fromSubtags(
            languageCode: 'zh',
            scriptCode: 'Hans'), // Generic Simplified Chinese 'zh_Hans'
        const Locale.fromSubtags(
            languageCode: 'zh',
            scriptCode: 'Hant'), // Generic traditional Chinese 'zh_Hant'
      ],
      localizationsDelegates: [
        CountryLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      locale: Locale('ar'),
    );
  }

  monthly() {}
}
