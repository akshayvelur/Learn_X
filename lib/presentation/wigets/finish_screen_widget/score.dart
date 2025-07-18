
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:learn_x/core/utils/mediaquery.dart';

class Score extends StatelessWidget {
  const Score({
    super.key,
    required this.isDark,
  });

  final bool isDark;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              CircleAvatar(
                backgroundColor:
                    isDark
                        ? const Color.fromARGB(95, 87, 112, 122)
                        : Colors.white,
                radius: 30,
                child: Center(
                  child: Image.asset(
                    "assets/power.png",
                    width: mediaQueryHeight(context, .025),
                    height: mediaQueryHeight(context, .025),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                  "Fast Learner",
                  style: GoogleFonts.roboto(fontSize: 12,fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
          Column(
            children: [
              CircleAvatar(
                backgroundColor:
                    isDark
                        ?  const Color.fromARGB(95, 87, 112, 122)
                        : Colors.white,
                radius: 30,
                child: Center(
                  child: Image.asset(
                    "assets/fire.png",
                    width: mediaQueryHeight(context, .025),
                    height: mediaQueryHeight(context, .025),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                  "On Fire",
                  style: GoogleFonts.roboto(fontSize: 12,fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
          Column(
            children: [
              CircleAvatar(
                backgroundColor:
                    isDark
                        ? const Color.fromARGB(255, 51, 56, 58)
                        : const Color.fromARGB(255, 77, 76, 76),
                radius: 30,
                child: Center(
                  child: Image.asset(
                    "assets/star (1).png",
                    width: mediaQueryHeight(context, .025),
                    height: mediaQueryHeight(context, .025),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                  "Perfect Score",
                  style: GoogleFonts.roboto(fontSize: 12,fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
