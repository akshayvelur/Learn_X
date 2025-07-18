
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppSubText extends StatelessWidget {
  const AppSubText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5),
      child: Text("Interactive Learning Experience",style: GoogleFonts.roboto(fontSize: 13,fontWeight: FontWeight.w400),),
    );
  }
}
