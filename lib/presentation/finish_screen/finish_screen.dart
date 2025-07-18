import 'package:flutter/material.dart';
import 'package:learn_x/core/utils/mediaquery.dart';

class FinishScreen extends StatelessWidget {
  const FinishScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Image.asset(
              "assets/graduate.png",
              width: mediaQueryWidth(context, 0.08),
              height: mediaQueryHeight(context, 0.08),
            ),
          ],
        ),
      ),
    );
  }
}
