import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PerfectScoreText extends StatelessWidget {
  const PerfectScoreText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Text("Perfect Score!",style: GoogleFonts.roboto(fontSize: 26,fontWeight: FontWeight.w500),),
    );
  }
}
