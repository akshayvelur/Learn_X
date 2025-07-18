
import 'package:flutter/material.dart';
import 'package:learn_x/core/utils/list_icon.dart';
import 'package:learn_x/core/utils/mediaquery.dart';

class OtherLoginMethord extends StatelessWidget {
  const OtherLoginMethord({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
       for(int i=0;i<signIcon.length;i++) Padding(
          padding: const EdgeInsets.only(top: 17,left: 14),
          child:Container(
            height: mediaQueryHeight(context, 0.06),
            width: mediaQueryWidth(context, 0.25),
            decoration: BoxDecoration(
              border: Border.all(
                color: const Color.fromARGB(255, 128, 127, 127),
              ),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Center(
              child: Image.asset(
                signIcon[i],
                width: mediaQueryWidth(context, 0.04),
                height: mediaQueryHeight(context, 0.04),fit: BoxFit.contain,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
