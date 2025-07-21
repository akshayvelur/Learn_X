
import 'package:flutter/material.dart';
import 'package:learn_x/core/utils/mediaquery.dart';
import 'package:lottie/lottie.dart';

class Loading extends StatelessWidget {
  const Loading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LottieBuilder.asset("assets/Basic Loading Progress Bar.json",width: mediaQueryWidth(context, .66),height: mediaQueryHeight(context,.01),fit: BoxFit.fill,);
  }
}
