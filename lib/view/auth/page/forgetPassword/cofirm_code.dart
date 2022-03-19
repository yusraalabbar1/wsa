import 'package:flutter/material.dart';
import 'package:wst/utils/constant/color.dart';
import 'package:wst/view/auth/widget/themeWst.dart';

class confirmCodeUsingMobile extends StatefulWidget {
  confirmCodeUsingMobile({Key? key}) : super(key: key);

  @override
  State<confirmCodeUsingMobile> createState() => _confirmCodeUsingMobileState();
}

class _confirmCodeUsingMobileState extends State<confirmCodeUsingMobile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // imageBackgroundContainer(),
          containerMaine(),
          Container(
            decoration: boxDecorationMain(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                wstContainer(context),
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
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        hintText: '*******',
                      ),
                      onChanged: (value) {
                        // do something
                      },
                    ),
                  ),
                ),
                Center(
                  child: buttonStart(
                      MyColors.color1,
                      MyColors.color1,
                      "ارسال رسالة التأكيد",
                      MyColors.color3,
                      context,
                      "resetCodePassword"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
