
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CopyRight extends StatelessWidget {
  const CopyRight({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text("© 2025 LearnX",style: GoogleFonts.roboto(fontSize: 12,fontWeight: FontWeight.w400),);
  }
}
