
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DragTheCorrect extends StatelessWidget {
  const DragTheCorrect({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, top: 10),
      child: Text(
        "Drag the Correct definition to each term:",
        style: GoogleFonts.roboto(
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}