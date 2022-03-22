import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wst/control/homecontroller.dart';
import 'package:wst/model/modeApi/model_compitition.dart';
import 'package:wst/view/other/competitionsScreens/widgetc_alItem_compitition.dart';

// Widget pageCompit() {
//   return GridView.builder(
//     shrinkWrap: true,
//     scrollDirection: Axis.vertical,
//     physics: ScrollPhysics(),
//     gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//       crossAxisCount: 2,
//       //crossAxisSpacing: 10,
//       //mainAxisSpacing: 10,
//       // childAspectRatio: 2,
//     ),
//     itemCount: MyCompitition.length,
//     itemBuilder: (BuildContext context, int index) {
//       return GetBuilder<homecontroller>(builder: (controller) {
//         return (InkWell(
//           onTap: () {
//             controller.SavenameComp(MyCompitition[index]['nameCompitition']);
//             controller.SavemonyrComp(MyCompitition[index]['mony']);
//             controller.SavediscrpComp(MyCompitition[index]['description']);
//             Navigator.of(context).pushNamed("infoCompet");
//           },
//           child: Container(
//               height: 218,
//               width: MediaQuery.of(context).size.width,
//               decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(10),
//                   image: DecorationImage(
//                       image: AssetImage("assets/images/backCompititon.png"),
//                       fit: BoxFit.cover)),
//               //width: 500,
//               // width: 80,
//               // height: 218,
//               margin: EdgeInsets.all(10),
//               child: Column(
//                 children: [
//                   Container(
//                       color: Color(0xff141E34).withOpacity(0.6),
//                       // width: MediaQuery.of(context).size.width,
//                       height: 96,
//                       width: 180,
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Container(
//                             height: 22,
//                             width: 44,
//                             child: RaisedButton(
//                               color: Colors.black,
//                               shape: RoundedRectangleBorder(
//                                   side:
//                                       BorderSide(color: Colors.pink, width: 2)),
//                               onPressed: () {},
//                               child: Text(
//                                 "12",
//                                 style: TextStyle(
//                                     color: Colors.white,
//                                     fontSize: 9,
//                                     fontFamily: 'Almarai'),
//                               ),
//                             ),
//                           ),
//                           SizedBox(
//                             height: 3,
//                           ),
//                           Text(
//                             "عدد المتسابقين المتبقي",
//                             style: TextStyle(
//                                 color: Colors.white,
//                                 fontSize: 9,
//                                 fontFamily: 'Almarai'),
//                           ),
//                           SizedBox(
//                             height: 3,
//                           ),
//                           Text(
//                             "${MyCompitition[index]['name']}",
//                             style: TextStyle(
//                                 color: Colors.white,
//                                 fontSize: 12,
//                                 fontFamily: 'Almarai'),
//                           ),
//                         ],
//                       )),
//                   Container(
//                       height: 80,
//                       width: 180,
//                       decoration: BoxDecoration(
//                           borderRadius: BorderRadius.only(
//                               bottomLeft: Radius.circular(10),
//                               bottomRight: Radius.circular(10)),
//                           image: DecorationImage(
//                               image: AssetImage("assets/images/backCopit.PNG"),
//                               fit: BoxFit.cover)),
//                       // width: MediaQuery.of(context).size.width,
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Image.asset(
//                             "assets/images/trophy.png",
//                             width: 31,
//                             height: 31,
//                           ),
//                           Text("${MyCompitition[index]['awardAmount']}",
//                               style: TextStyle(
//                                   color: Colors.white,
//                                   fontSize: 9,
//                                   fontFamily: 'Almarai')),
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               SizedBox(
//                                 width: 5,
//                               ),
//                               Container(
//                                 height: 22,
//                                 width: 44,
//                                 child: RaisedButton(
//                                   color: Colors.black,
//                                   shape: RoundedRectangleBorder(
//                                       side: BorderSide(
//                                           color: Colors.pink, width: 2)),
//                                   onPressed: () {},
//                                   child: Text(
//                                     "${MyCompitition[index]['amount']}",
//                                     style: TextStyle(
//                                         color: Colors.white,
//                                         fontSize: 9,
//                                         fontFamily: 'Almarai'),
//                                   ),
//                                 ),
//                               ),
//                               SizedBox(
//                                 width: 5,
//                               ),
//                               Container(
//                                 height: 22,
//                                 width: 44,
//                                 child: RaisedButton(
//                                   color: Colors.black,
//                                   shape: RoundedRectangleBorder(
//                                       side: BorderSide(
//                                           color: Colors.pink, width: 2)),
//                                   onPressed: () {},
//                                   child: Text(
//                                     "55",
//                                     style: TextStyle(
//                                         color: Colors.white,
//                                         fontSize: 9,
//                                         fontFamily: 'Almarai'),
//                                   ),
//                                 ),
//                               ),
//                               SizedBox(
//                                 width: 5,
//                               ),
//                             ],
//                           )
//                         ],
//                       ))
//                 ],
//               )),
//         ));
//       });
//     },
//   );
// }
