
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeSubText extends StatelessWidget {
  const WelcomeSubText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5),
      child: Text("Sign in to continue your learing journey",style: GoogleFonts.notoSansNKo( fontSize: 17,fontWeight: FontWeight.w500),),
    );
  }
}