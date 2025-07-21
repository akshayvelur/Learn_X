
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DontHaveAccount extends StatelessWidget {
  const DontHaveAccount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25),
      child: Row(mainAxisAlignment: MainAxisAlignment.center,children: [Text("Don't have an account? ",style: GoogleFonts.roboto(color: const Color.fromARGB(255, 128, 127, 127),),),Text("Sign up",style: GoogleFonts.roboto(fontWeight: FontWeight.w500),)],),
    );
  }
}
