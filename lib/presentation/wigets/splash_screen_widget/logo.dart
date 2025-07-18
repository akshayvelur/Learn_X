
import 'package:flutter/material.dart';
import 'package:learn_x/core/utils/mediaquery.dart';

class logo extends StatelessWidget {
  const logo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 200,),
      child: Center(
        child: Image.asset(
          "assets/learnx screenshort.png",
          width: mediaQueryHeight(context, 0.28),
          height: mediaQueryWidth(context, 0.28),
        ),
      ),
    );
  }
}
