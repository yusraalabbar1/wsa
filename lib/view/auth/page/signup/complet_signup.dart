import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wst/control/homecontroller.dart';
import 'package:wst/model/modeApi/getcountery.dart';
import 'package:wst/utils/constant/color.dart';
import 'package:wst/view/auth/widget/themeWst.dart';

// import 'package:equatable/equatable.dart';
class completSignUp extends StatefulWidget {
  completSignUp({Key? key}) : super(key: key);

  @override
  State<completSignUp> createState() => _completSignUpState();
}

class _completSignUpState extends State<completSignUp> {
  var _selected;
  homecontroller controller = Get.put(homecontroller());

  GlobalKey<FormState> formstate = new GlobalKey<FormState>();
  var email;
  var city;
  var cityname;
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
                    alignment: Alignment.center,
                    padding:
                        const EdgeInsets.only(left: 30, right: 50, bottom: 10),
                    child: Text(
                      "أهلا بك نشكرك على تسجيلك معنا",
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    padding:
                        const EdgeInsets.only(left: 30, right: 50, bottom: 10),
                    child: Text(
                      "لم يتبقى سوى خطوات بسيطة",
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    padding:
                        const EdgeInsets.only(left: 30, right: 50, bottom: 10),
                    child: Text(
                      "البريد الإلكتروني",
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 30, right: 30, bottom: 10),
                    child: Center(child:
                        GetBuilder<homecontroller>(builder: (controller) {
                      return (TextFormField(
                        style: TextStyle(color: MyColors.color3),
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          hintText: 'wsl@gmail.com',
                        ),
                        validator: (text) {
                          if (text!.length > 40) {
                            return "can not enter bigest than 40";
                          }
                          if (text.length < 2) {
                            return "can not enter less than 2";
                          }
                          return null;
                        },
                        onSaved: (string) {
                          print("on saved");
                          email = string;
                          controller.SaveLastName(string);
                        },
                      ));
                    })),
                  ),
                  Row(
                    children: [
                      Expanded(
                          flex: 1,
                          child: Column(
                            children: [
                              Container(
                                alignment: Alignment.centerRight,
                                padding: const EdgeInsets.only(
                                    left: 2, right: 50, bottom: 10),
                                child: Text(
                                  "الدولة",
                                  style: Theme.of(context).textTheme.headline4,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 2, right: 30, bottom: 10),
                                child: Center(
                                  child: Container(
                                    height: 65,
                                    width: 250,
                                    margin: EdgeInsets.only(bottom: 15),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color: MyColors.color2,
                                      boxShadow: [
                                        BoxShadow(spreadRadius: 0.8),
                                      ],
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Expanded(child:
                                            GetBuilder<homecontroller>(
                                                builder: (controller) {
                                          return (TextFormField(
                                            style: TextStyle(
                                                color: MyColors.color3),
                                            enabled: false,
                                            textInputAction:
                                                TextInputAction.next,
                                            decoration: InputDecoration(
                                              hintText:
                                                  '${controller.saveCountryName}',
                                              hintStyle: TextStyle(
                                                  color: MyColors.color3),
                                            ),
                                          ));
                                        })),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )),
                      Expanded(
                          flex: 1,
                          child: Column(
                            children: [
                              Container(
                                alignment: Alignment.centerRight,
                                padding: const EdgeInsets.only(
                                    left: 30, right: 2, bottom: 10),
                                child: Text(
                                  "المدينة",
                                  style: Theme.of(context).textTheme.headline4,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 30, right: 2, bottom: 10),
                                child: Center(
                                  child: Container(
                                    height: 65,
                                    width: 250,
                                    margin: EdgeInsets.only(bottom: 15),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color: MyColors.color2,
                                      boxShadow: [
                                        BoxShadow(spreadRadius: 0.8),
                                      ],
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        GetBuilder<homecontroller>(
                                            builder: (controller) {
                                          return (Expanded(
                                            child: DropdownButtonHideUnderline(
                                              child: ButtonTheme(
                                                alignedDropdown: true,
                                                child: DropdownButton<dynamic>(
                                                  dropdownColor:
                                                      MyColors.color2,
                                                  isDense: true,
                                                  hint: const Text(
                                                    "Select city",
                                                    style: TextStyle(
                                                      color: MyColors.color4,
                                                    ),
                                                  ),
                                                  value: _selected,
                                                  onChanged: (newValue) {
                                                    setState(() {
                                                      _selected = newValue!;
                                                    });
                                                    print(_selected);
                                                    controller.SavecityId(
                                                        int.parse(_selected));
                                                    cityname = myJsonCity
                                                        .map((Map map) =>
                                                            map["cityDescAr"])
                                                        .toList();
                                                    print(cityname);
                                                  },
                                                  items:
                                                      myJsonCity.map((Map map) {
                                                    return DropdownMenuItem<
                                                        dynamic>(
                                                      value: map["cityId"]
                                                          .toString(),
                                                      child: Row(
                                                        children: <Widget>[
                                                          Container(
                                                              margin:
                                                                  const EdgeInsets
                                                                          .only(
                                                                      right:
                                                                          10),
                                                              child: Text(
                                                                  map[
                                                                      "cityDescAr"],
                                                                  style:
                                                                      const TextStyle(
                                                                    color: MyColors
                                                                        .color3,
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
                                        /* GetBuilder<homecontroller>(
                                            builder: (controller) {
                                          return (Expanded(child:
                                              GetBuilder<homecontroller>(
                                                  builder: (controller) {
                                            return (TextFormField(
                                              textInputAction:
                                                  TextInputAction.next,
                                              decoration: InputDecoration(
                                                hintText: 'المدينة',
                                              ),
                                              onChanged: (value) {
                                                // do something
                                              },
                                              validator: (text) {
                                                if (text!.length > 15) {
                                                  return "can not enter bigest than 15";
                                                }
                                                if (text.length < 2) {
                                                  return "can not enter less than 2";
                                                }
                                                return null;
                                              },
                                              onSaved: (string) {
                                                print("on saved");
                                                city = string;
                                                controller.SavecityName(string);
                                              },
                                            ));
                                          })));
                                        }),*/
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ))
                    ],
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
                    child: Center(child:
                        GetBuilder<homecontroller>(builder: (controller) {
                      return (TextFormField(
                        style: TextStyle(color: MyColors.color3),
                        enabled: false,
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          hintText: '${controller.saveNumberPhone}',
                          hintStyle: TextStyle(color: MyColors.color3),
                        ),
                      ));
                    })),
                  ),
                  Center(
                    child: Container(
                      width: double.infinity,
                      height: 55,
                      margin: EdgeInsets.only(
                          bottom: 10, right: 30, left: 30, top: 10),
                      child: RaisedButton(
                        color: MyColors.color1,
                        elevation: 10,
                        splashColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                            side: BorderSide(color: MyColors.color1, width: 2)),
                        onPressed: () {
                          var formdata = formstate.currentState;
                          if (formdata!.validate()) {
                            formdata.save();
                            Navigator.of(context).pushNamed("finalLogin");
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
                            left: 30, right: 50, bottom: 10),
                        child: Text(
                          "هل لديك حساب؟",
                          style: Theme.of(context).textTheme.headline4,
                        ),
                      ),
                      InkWell(
                        child: Container(
                          alignment: Alignment.centerRight,
                          padding: const EdgeInsets.only(bottom: 10),
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
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
