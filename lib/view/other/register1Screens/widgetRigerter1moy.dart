import 'package:flutter/material.dart';

Widget widgetRigerter1moy() {
  return Padding(
    padding: const EdgeInsets.all(15.0),
    child: Column(
      children: [
        Expanded(
            child: Row(
          children: [
            Text("سجل التحويلات",
                style: TextStyle(
                    color: Colors.white, fontSize: 13, fontFamily: 'Almarai'))
          ],
        )),
        Row(
          children: [
            Expanded(
                child: Container(
              alignment: Alignment.topRight,
              child: Text("لقد تم تحويل 10 ريال إلى محمد العمري",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                      fontFamily: 'Almarai')),
            )),
            Expanded(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  child: Text("التفاصيل",
                      style: TextStyle(
                          color: Color(0xff707070),
                          fontSize: 13,
                          fontFamily: 'Almarai')),
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.navigate_next,
                      color: Colors.white,
                    ))
              ],
            ))
          ],
        ),
        Container(
          height: 2,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    Color.fromARGB(255, 32, 53, 104),
                    Color(0xff414D72)
                  ]),
              borderRadius: BorderRadius.all(Radius.circular(20))),
        ),
        Row(
          children: [
            Expanded(
                child: Container(
              alignment: Alignment.topRight,
              child: Text("لقد تم تحويل 10 ريال إلى محمد العمري",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                      fontFamily: 'Almarai')),
            )),
            Expanded(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  child: Text("التفاصيل",
                      style: TextStyle(
                          color: Color(0xff707070),
                          fontSize: 13,
                          fontFamily: 'Almarai')),
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.navigate_next,
                      color: Colors.white,
                    ))
              ],
            ))
          ],
        ),
        Container(
          height: 2,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    Color.fromARGB(255, 32, 53, 104),
                    Color(0xff414D72)
                  ]),
              borderRadius: BorderRadius.all(Radius.circular(20))),
        ),
        Row(
          children: [
            Expanded(
                child: Container(
              alignment: Alignment.topRight,
              child: Text("لقد تم تحويل 10 ريال إلى محمد العمري",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                      fontFamily: 'Almarai')),
            )),
            Expanded(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  child: Text("التفاصيل",
                      style: TextStyle(
                          color: Color(0xff707070),
                          fontSize: 13,
                          fontFamily: 'Almarai')),
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.navigate_next,
                      color: Colors.white,
                    ))
              ],
            ))
          ],
        ),
        Container(
          height: 2,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    Color.fromARGB(255, 32, 53, 104),
                    Color(0xff414D72)
                  ]),
              borderRadius: BorderRadius.all(Radius.circular(20))),
        ),
        SizedBox(
          height: 20,
        )
      ],
    ),
  );
}
