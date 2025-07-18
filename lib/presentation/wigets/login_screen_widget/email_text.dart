
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EmailText extends StatelessWidget {
  const EmailText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(alignment:Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.only(top: 30,left: 10),
        child: Text("Email",style: GoogleFonts.roboto(fontSize: 15,fontWeight: FontWeight.w500),),
      ),
    );
  }
}



class PasswordText extends StatelessWidget {
  const PasswordText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(alignment:Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.only(top: 20,left: 10),
        child: Text("Password",style: GoogleFonts.roboto(fontSize: 15,fontWeight: FontWeight.w500),),
      ),
    );
  }
}
