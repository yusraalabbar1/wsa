import 'package:flutter/material.dart';
import 'package:wst/model/modeApi/api_all_agents.dart';
import 'package:wst/view/other/agentsScreens/allagents.dart';

Widget widgetgallaryagent(context) {
  return Container(
    // color: Colors.white,
    height: 123,
    width: MediaQuery.of(context).size.width,

    child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: allAgent.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(2.0),
            child: Card(
              child: Stack(children: [
                Container(
                  width: 96,
                  height: 62,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/backCompititon.png"),
                          fit: BoxFit.cover)),
                ),
              ]),
            ),
          );
        }),
  );
}
