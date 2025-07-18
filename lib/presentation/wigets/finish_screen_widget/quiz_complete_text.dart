
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuizCompleteText extends StatelessWidget {
  const QuizCompleteText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5),
      child: Text("Quiz Completed",style: GoogleFonts.roboto(fontSize: 16,fontWeight: FontWeight.w400),),
    );
  }
}

