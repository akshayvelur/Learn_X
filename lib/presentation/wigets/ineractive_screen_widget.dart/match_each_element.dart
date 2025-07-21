
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MatchEachElementText extends StatelessWidget {
  const MatchEachElementText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10,left: 10),
      child: Text("Match each element with its correct definition:",style: GoogleFonts.roboto(fontSize: 20,fontWeight: FontWeight.w500),),
    );
  }
}
