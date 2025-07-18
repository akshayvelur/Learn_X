


import 'package:flutter/material.dart';
import 'package:learn_x/core/utils/mediaquery.dart';

class TrophyIcon extends StatelessWidget {
  const TrophyIcon({
    super.key,
    required this.isDark,
  });

  final bool isDark;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Center(
        child: CircleAvatar(
          backgroundColor:isDark? const Color.fromARGB(255, 58, 89, 107):Colors.white,
          radius: 40,
          child: Center(
            child: Image.asset(isDark?
              "assets/trophy.png":"assets/trophy (1).png",
              width: mediaQueryWidth(context, .08),
            ),
          ),
        ),
      ),
    );
  }
}
