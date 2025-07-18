
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeText extends StatelessWidget {
  const WelcomeText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Text("Welcome to LearnX",style: GoogleFonts.notoSansNKo( fontSize: 25,fontWeight: FontWeight.w700),),
    );
  }
}