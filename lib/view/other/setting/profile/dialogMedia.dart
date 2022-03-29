import 'dart:io';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

dialogForMediae(context) async {
  var whatsapp = "00221778821171";
  var number = "00221778821171";
  var email = "alabbarysra@gmail.com";
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
            content: Container(
          height: 250,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 127,
                height: 50,
                child: RaisedButton.icon(
                  onPressed: () {
                    print('Button Clicked.');
                    openwhatsapp(context, whatsapp);
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(25.0))),
                  label: Text(
                    "WhatsApp",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontFamily: 'Almarai'),
                  ),
                  icon: Icon(
                    Icons.whatsapp_outlined,
                    color: Colors.white,
                  ),
                  textColor: Colors.white,
                  splashColor: Colors.white,
                  color: Color(0xff464699),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 127,
                height: 50,
                child: RaisedButton.icon(
                  onPressed: () {
                    print('Button Clicked.');
                    launch("tel:$number");
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(25.0))),
                  label: Text(
                    "Call Phone",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontFamily: 'Almarai'),
                  ),
                  icon: Icon(
                    Icons.call,
                    color: Colors.white,
                  ),
                  textColor: Colors.white,
                  splashColor: Colors.white,
                  color: Color(0xff464699),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 127,
                height: 50,
                child: RaisedButton.icon(
                  onPressed: () {
                    print('Button Clicked.');
                    launch("sms:$number");
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(25.0))),
                  label: Text(
                    "Message",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontFamily: 'Almarai'),
                  ),
                  icon: Icon(
                    Icons.message,
                    color: Colors.white,
                  ),
                  textColor: Colors.white,
                  splashColor: Colors.white,
                  color: Color(0xff464699),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 127,
                height: 50,
                child: RaisedButton.icon(
                  onPressed: () {
                    print('Button Clicked.');
                    launch("mailto:$email");
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(25.0))),
                  label: Text(
                    "Email",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontFamily: 'Almarai'),
                  ),
                  icon: Icon(
                    Icons.message,
                    color: Colors.white,
                  ),
                  textColor: Colors.white,
                  splashColor: Colors.white,
                  color: Color(0xff464699),
                ),
              )
            ],
          ),
        ));
      });
}

openwhatsapp(context, whatsapp) async {
  var whatsappURl_android = "whatsapp://send?phone=" + whatsapp + "&text=hello";
  var whatappURL_ios = "https://wa.me/$whatsapp?text=${Uri.parse("hello")}";
  if (Platform.isIOS) {
    // for iOS phone only
    if (await canLaunch(whatappURL_ios)) {
      await launch(whatappURL_ios, forceSafariVC: false);
    } else {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: new Text("whatsapp no installed")));
    }
  } else {
    // android , web
    if (await canLaunch(whatsappURl_android)) {
      await launch(whatsappURl_android);
    } else {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: new Text("whatsapp no installed")));
    }
  }
}
