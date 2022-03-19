import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wst/model/modeApi/getcountery.dart';
import 'package:wst/model/modelJson/Country_model.dart';
import 'package:wst/utils/constant/color.dart';
import 'package:wst/view/auth/widget/linkS_social_media.dart';
import 'package:wst/view/auth/widget/themeWst.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:wst/control/homecontroller.dart';
import '../../../../model/modeApi/getcountery.dart';
import 'package:footer/footer.dart';
import 'package:footer/footer_view.dart';

class login extends StatefulWidget {
  login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  homecontroller controller = Get.put(homecontroller());
  GlobalKey<ScaffoldState> scaffoldkey = new GlobalKey<ScaffoldState>();
  GlobalKey<FormState> formstate = new GlobalKey<FormState>();
  var TelephoneNumber;
  var _selected;
  var codeotp;
  var countryname;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // imageBackgroundContainer(),
          containerMaine(),
          Container(
            decoration: boxDecorationMain(),
            child: Form(
              key: formstate,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  wstContainer(context),

                  Container(
                    alignment: Alignment.centerRight,
                    padding:
                        const EdgeInsets.only(left: 30, right: 50, bottom: 10),
                    child: Text(
                      "الدولة",
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ),

                  // ),
                  Center(
                    child: Container(
                      height: 65,
                      width: 330,
                      margin: EdgeInsets.only(bottom: 15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: MyColors.color2,
                        boxShadow: [
                          BoxShadow(spreadRadius: 0.8),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          GetBuilder<homecontroller>(builder: (controller) {
                            return (Expanded(
                              child: DropdownButtonHideUnderline(
                                child: ButtonTheme(
                                  alignedDropdown: true,
                                  child: DropdownButton<dynamic>(
                                    isDense: true,
                                    dropdownColor: MyColors.color2,
                                    hint: const Text(
                                      "Select country",
                                      style: TextStyle(
                                        color: MyColors.color4,
                                      ),
                                    ),
                                    value: _selected,
                                    onChanged: (newValue) {
                                      setState(() {
                                        _selected = newValue!;
                                      });
                                      controller.SaveCountryid(
                                          int.parse(_selected));
                                      codeotp = myJsonCountry
                                          .map((Map map) => map["countryCode"])
                                          .toList();
                                      controller.SaveCountryCode(int.parse(
                                          codeotp[int.parse(_selected) - 1]));
                                      countryname = myJsonCountry
                                          .map(
                                              (Map map) => map["countryDescAr"])
                                          .toList();
                                      controller.SaveCountryName(countryname[
                                          int.parse(_selected) - 1]);
                                    },
                                    items: myJsonCountry.map((Map map) {
                                      return DropdownMenuItem<dynamic>(
                                        value: map["id"].toString(),
                                        child: Row(
                                          children: <Widget>[
                                            // Container(
                                            //     child: Image.network(
                                            //         "http://212.24.108.54/wsa/" +
                                            //             map["countryFlag"])
                                            //             ),
                                            Container(
                                                margin: const EdgeInsets.only(
                                                    right: 10),
                                                child: Text(
                                                    map["countryDescAr"],
                                                    style: const TextStyle(
                                                      color: MyColors.color3,
                                                    ))),
                                          ],
                                        ),
                                      );
                                    }).toList(),
                                  ),
                                ),
                              ),
                            ));
                          }),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    padding:
                        const EdgeInsets.only(left: 30, right: 50, bottom: 10),
                    child: Text(
                      "رقم الهاتف",
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ),

                  Padding(
                    padding:
                        const EdgeInsets.only(left: 30, right: 30, bottom: 10),
                    child: Center(
                      child: GetBuilder<homecontroller>(builder: (controller) {
                        return (TextFormField(
                          enabled:
                              controller.saveCountryName == "" ? false : true,
                          style: TextStyle(color: MyColors.color3),
                          keyboardType: TextInputType.number,

                          decoration: InputDecoration(
                              hintText: "096665222302",
                              suffixText: "${controller.saveCountryCode}+"),

                          validator: (text) {
                            if (text!.length > 15) {
                              return "can not enter bigest than 15";
                            }
                            if (text.length < 9) {
                              return "can not enter less than 9";
                            }
                            return null;
                          },
                          onSaved: (string) {
                            print("on saved");
                            TelephoneNumber = string;
                            controller.SaveNumberPhone(string);
                          },
                          // onChanged: (value) {
                          //    controller.SaveNumberPhone(int.parse(value));
                          // },
                        ));
                      }),
                    ),
                  ),
                  Center(
                    child: Container(
                      width: double.infinity,
                      height: 55,
                      margin: EdgeInsets.only(
                          bottom: 30, right: 30, left: 30, top: 30),
                      child: RaisedButton(
                        color: MyColors.color1,
                        elevation: 10,
                        splashColor: MyColors.color3,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                            side: BorderSide(color: MyColors.color1, width: 2)),
                        onPressed: () {
                          var formdata = formstate.currentState;
                          if (formdata!.validate()) {
                            formdata.save();
                            Navigator.of(context).pushNamed("signup");
                          }
                        },
                        child: Text(
                          "استمرار",
                          style: TextStyle(
                              fontSize: 13,
                              color: MyColors.color3,
                              fontFamily: 'Almarai'),
                        ),
                      ),
                    ),
                  ),

                  Row(
                    children: [
                      Container(
                        alignment: Alignment.centerRight,
                        padding: const EdgeInsets.only(
                            left: 30, right: 50, bottom: 30),
                        child: Text(
                          "هل لديك حساب؟",
                          style: Theme.of(context).textTheme.headline4,
                        ),
                      ),
                      InkWell(
                        child: Container(
                          alignment: Alignment.centerRight,
                          padding: const EdgeInsets.only(bottom: 30),
                          child: Text(
                            "تسجيل الدخول",
                            style: Theme.of(context).textTheme.headline3,
                          ),
                        ),
                        onTap: () {
                          Navigator.of(context).pushNamed("oldLogin");
                        },
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      margin: EdgeInsets.only(bottom: 10),
                      child: Text(
                        "تواصل مع خدمة العملاء",
                        style: TextStyle(
                            fontSize: 13,
                            color: MyColors.color3,
                            fontFamily: 'Almarai'),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                        margin: EdgeInsets.only(bottom: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            mediaface("فيسبوك"),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              "-",
                              style: TextStyle(color: MyColors.color3),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            mediawhat("واتساب"),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              "-",
                              style: TextStyle(color: MyColors.color3),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            mediatele("تلغرام"),
                            const SizedBox(
                              width: 5,
                            ),
                          ],
                        )),
                  ),
                ],
              ),
            ),
          ),
          // Align(
          //   alignment: Alignment.bottomCenter,
          //   child: Container(
          //     margin: EdgeInsets.only(bottom: 40),
          //     child: Text(
          //       "تواصل مع خدمة العملاء",
          //       style: TextStyle(
          //           fontSize: 13,
          //           color: Color(0xffF5F5F9),
          //           fontFamily: 'Almarai'),
          //     ),
          //   ),
          // ),

          // Align(
          //   alignment: Alignment.bottomCenter,
          //   child: Container(
          //       margin: EdgeInsets.only(bottom: 20),
          //       child: Row(
          //         mainAxisAlignment: MainAxisAlignment.center,
          //         children: [
          //           media("فيسبوك"),
          //           const SizedBox(
          //             width: 5,
          //           ),
          //           media("-"),
          //           const SizedBox(
          //             width: 5,
          //           ),
          //           media("واتساب"),
          //           const SizedBox(
          //             width: 5,
          //           ),
          //           media("-"),
          //           const SizedBox(
          //             width: 5,
          //           ),
          //           media("تلغرام"),
          //           const SizedBox(
          //             width: 5,
          //           ),
          //         ],
          //       )),
          // ),
        ],
      ),
    );
  }
}

/////////////////*
