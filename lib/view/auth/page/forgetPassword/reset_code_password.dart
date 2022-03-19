import 'package:flutter/material.dart';
import 'package:wst/utils/constant/color.dart';
import 'package:wst/view/auth/widget/themeWst.dart';

class resetCodePassword extends StatefulWidget {
  resetCodePassword({Key? key}) : super(key: key);

  @override
  State<resetCodePassword> createState() => _resetCodePasswordState();
}

class _resetCodePasswordState extends State<resetCodePassword> {
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
                  alignment: Alignment.center,
                  padding:
                      const EdgeInsets.only(left: 30, right: 50, bottom: 10),
                  child: Text(
                    "لقد ارسلنا رسالة لك فيها رمز اعادة التعيين ",
                    style: Theme.of(context).textTheme.headline4,
                  ),
                ),
                Container(
                  alignment: Alignment.centerRight,
                  padding:
                      const EdgeInsets.only(left: 30, right: 50, bottom: 10),
                  child: Text(
                    "رمز اعادة التعيين",
                    style: Theme.of(context).textTheme.headline4,
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 30, right: 30, bottom: 10),
                  child: Center(
                    child: TextField(
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
                  child: buttonStart(MyColors.color1, MyColors.color1, "تأكيد",
                      MyColors.color3, context, "oldLogin"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
