
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:learn_x/core/utils/mediaquery.dart';
import 'package:learn_x/presentation/finish_screen/finish_screen.dart';

class NextNavigation extends StatelessWidget {
  const NextNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 10, right: 10,bottom: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: mediaQueryHeight(context, .06),
            width: mediaQueryWidth(context, .4),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              border: Border.all(color: Colors.grey),
            ),
            child: Padding(
              padding: EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Icon(Icons.arrow_back),
                  SizedBox(width: mediaQueryWidth(context, .02)),
                  Text(
                    "Previous",
                    style: GoogleFonts.roboto(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap:
                () => Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => FinishScreen()),
                ),
            child: Container(
              height: mediaQueryHeight(context, .06),
              width: mediaQueryWidth(context, .3),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.black,
                border: Border.all(color: Colors.grey),
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Text(
                      "Next",
                      style: GoogleFonts.roboto(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(width: mediaQueryWidth(context, .02)),
                    Icon(Icons.arrow_forward, color: Colors.white),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


