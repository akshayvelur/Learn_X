
import 'package:flutter/material.dart';
import 'package:learn_x/core/utils/mediaquery.dart';

class LoginLogo extends StatelessWidget {
  const LoginLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 110,),
      child: Center(
        child: Image.asset(
"assets/whitelogo.png",width: mediaQueryHeight(context, 0.20),
          height: mediaQueryWidth(context, 0.20),
        ),
      ),
    );
  }
}
