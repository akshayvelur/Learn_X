
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AchievementText extends StatelessWidget {
  const AchievementText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 40),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          "Achievements Unlocked",
          style: GoogleFonts.roboto(
            fontWeight: FontWeight.w500,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
