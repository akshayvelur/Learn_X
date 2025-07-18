
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppText extends StatelessWidget {
  const AppText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5),
      child: Text("LearnX",style: GoogleFonts.roboto(fontSize: 23,fontWeight: FontWeight.w500),),
    );
  }
}
