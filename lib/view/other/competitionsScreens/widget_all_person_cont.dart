import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wst/utils/constant/color.dart';

Widget widgetConst(context) {
  return Column(
    children: [
      Container(
        margin: EdgeInsets.only(left: 20, right: 20, bottom: 10),
        height: 35,
        child: Center(
          child: TextFormField(
            decoration: InputDecoration(
                contentPadding: EdgeInsets.all(15.0),
                prefixIcon: Icon(
                  Icons.search,
                  color: MyColors.color1,
                ),
                hintText: 'ابحث عن متسابق',
                hintStyle: TextStyle(fontSize: 10, color: MyColors.color3)),
            onChanged: (string) {},
          ),
        ),
      ),
      Container(
        margin: EdgeInsets.only(left: 20, right: 20),
        // color: Colors.white,
        height: 183,
        width: MediaQuery.of(context).size.width,

        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: almPersonConst.length,
            itemBuilder: (context, index) {
              return Stack(
                children: [
                  Column(
                    children: <Widget>[
                      Container(
                        height: 30,
                        width: 120,
                        color: Colors.transparent,
                      ),
                      Expanded(
                        child: Container(
                          height: 161,
                          width: 108,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(40),
                              bottomLeft: Radius.circular(40),
                            ),
                            color: Colors.primaries[
                                    Random().nextInt(Colors.primaries.length)]
                                .withOpacity(0.5),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "${almPersonConst[index]['name']}",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontFamily: 'Almarai'),
                              ),
                              Text(
                                "رقم",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontFamily: 'Almarai'),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: 2,
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                        begin: Alignment.centerLeft,
                                        end: Alignment.centerRight,
                                        colors: [
                                          Color.fromARGB(255, 83, 101, 143),
                                          Color(0xff414D72)
                                        ]),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "(" +
                                    "${almPersonConst[index]['number']}" +
                                    ")",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 21,
                                    fontFamily: 'Almarai'),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  Positioned(
                    left: 30,
                    top: 0.0,
                    // (background container size) - (circle height / 2)
                    child: Center(
                      child: Container(
                        child: InkWell(
                          child: Image.asset(
                            "${almPersonConst[index]['images']}",
                            height: 56.0,
                            width: 56.0,
                          ),
                        ),
                        height: 56.0,
                        width: 56.0,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Color(0xff1C2948)),
                      ),
                    ),
                  )
                ],
              );
            }),
      )
    ],
  );
}

List almPersonConst = [
  {"name": "yusra", "number": "21", "images": "assets/images/1.png"},
  {"name": "asmaa", "number": "65", "images": "assets/images/1.png"},
  {"name": "ahmad", "number": "2", "images": "assets/images/1.png"},
  {"name": "zaina", "number": "8", "images": "assets/images/1.png"}
];
