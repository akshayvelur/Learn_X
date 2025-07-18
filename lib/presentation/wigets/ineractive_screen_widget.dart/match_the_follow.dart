
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MatchTheFollowText extends StatelessWidget {
  const MatchTheFollowText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Text("MATCH THE FOLLOWING",style: GoogleFonts.roboto(color: const Color.fromARGB(255, 71, 70, 70)),),
    );
  }
}
