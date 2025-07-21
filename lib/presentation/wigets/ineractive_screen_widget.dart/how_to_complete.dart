
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:learn_x/core/utils/list_icon.dart';
import 'package:learn_x/core/utils/mediaquery.dart';
import 'package:learn_x/presentation/learing_screen.dart/learing_screen.dart';

class HowToComplete extends StatelessWidget {
  const HowToComplete({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 10,left: 10,right: 10),
        child: Container(
          height: mediaQueryHeight(context,0.16),
          width: mediaQueryWidth(context, 0.89),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color.fromARGB(69, 158, 158, 158),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 10,top: 10,bottom: 10),
            child: Row(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top:15),
                  child: CircleAvatar(
                    backgroundColor: const Color.fromARGB(
                      255,
                      18,
                      47,
                      63,
                    ),
                    child: Text(
                      "i",
                      style: GoogleFonts.roboto(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    radius: 10,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "How to complete",
                          style: GoogleFonts.roboto(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: mediaQueryWidth(context, .73),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Text(
                              "Drag each definition to match with its corresponding term. Corrently matched pairs will be highlighted.",
                              style: GoogleFonts.roboto(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,color: const Color.fromARGB(255, 82, 82, 82)
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Emoji extends StatelessWidget {
  const Emoji({super.key, required this.emoji});
  final String emoji;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Padding(
        padding: const EdgeInsets.only(top: 10,left: 8,right: 8,bottom: 10),
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: const Color.fromARGB(255, 193, 193, 193)),
          ),
          padding: EdgeInsets.all(10),
          child: Text(
            choice[emoji] ?? "",
            style: GoogleFonts.roboto(color: Colors.black, fontSize: 16),
          ),
        ),
      ),
    );
  }
}
