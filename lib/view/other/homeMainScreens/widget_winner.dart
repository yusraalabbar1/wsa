import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

import 'package:get/get.dart';
import 'package:wst/control/homecontroller.dart';

List winner = [
  {
    "image": "assets/images/1.png",
    "name": "احمد",
    "country": "سوريا",
    "flage": "assets/images/Syriaicon.png",
    "cup": "assets/images/trophy.png",
    "mony": "2000",
    "descrition":
        "هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق."
  },
  {
    "image": "assets/images/1.png",
    "name": "يسرا",
    "country": "سوريا",
    "flage": "assets/images/Syriaicon.png",
    "cup": "assets/images/trophy.png",
    "mony": "300",
    "descrition":
        "هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق."
  },
  {
    "image": "assets/images/1.png",
    "name": "خالد",
    "country": "سوريا",
    "flage": "assets/images/Syriaicon.png",
    "cup": "assets/images/trophy.png",
    "mony": "50",
    "descrition":
        "هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق."
  },
  {
    "image": "assets/images/1.png",
    "name": "محمد",
    "country": "سوريا",
    "flage": "assets/images/Syriaicon.png",
    "cup": "assets/images/trophy.png",
    "mony": "8000",
    "descrition":
        "هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق."
  }
];

Widget widetWinner(context) {
  homecontroller controller = Get.put(homecontroller());
  return Container(
    // color: Colors.white,
    margin: EdgeInsets.only(left: 20, right: 20),
    height: 193,
    width: MediaQuery.of(context).size.width,

    child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: winner.length,
        itemBuilder: (context, index) {
          return GetBuilder<homecontroller>(builder: (controller) {
            return (InkWell(
              onTap: (() {
                controller.SaveindexWinner(index);
                Navigator.of(context).pushNamed("detailsWinner");
              }),
              child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Stack(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            height: 30,
                            width: 148,
                            color: Colors.transparent,
                          ),
                          Expanded(
                            child: Container(
                              height: 161,
                              width: 148,
                              padding: EdgeInsets.only(top: 30),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.primaries[
                                    Random().nextInt(Colors.primaries.length)],
                              ),
                              child: Column(
                                children: [
                                  Text(
                                    "${winner[index]['name']}",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontFamily: 'Almarai'),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        "${winner[index]['flage']}",
                                        width: 20,
                                        height: 20,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        "${winner[index]['country']}",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 9,
                                            fontFamily: 'Almarai'),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    width: 105,
                                    height: 74,
                                    padding: EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Color(0xff1A1E2B).withOpacity(0.5),
                                    ),
                                    child: Column(
                                      children: [
                                        Image.asset("${winner[index]['cup']}"),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          "${winner[index]['mony']}",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18,
                                              fontFamily: 'Almarai'),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                      Positioned(
                        left: 46,
                        top: 0.0,
                        // (background container size) - (circle height / 2)
                        child: Center(
                          child: Container(
                            child: InkWell(
                              child: Image.asset(
                                "${winner[index]['image']}",
                                height: 56.0,
                                width: 56.0,
                              ),
                            ),
                            height: 56.0,
                            width: 56.0,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xff1C2948)),
                          ),
                        ),
                      )
                    ],
                  )),
            ));
          });
        }),
  );
}
