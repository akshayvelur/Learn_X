
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:learn_x/core/utils/mediaquery.dart';

class InteractiveAppBar extends StatelessWidget {
  const InteractiveAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leadingWidth: 20,
      leading: Icon(Icons.arrow_back, color: Colors.black),
      title: Text("Interactive Learing", style: GoogleFonts.roboto(fontSize: 20,fontWeight: FontWeight.w600)),
    actions: [Text("3/10",style: GoogleFonts.roboto(color: Colors.black,fontWeight: FontWeight.w500),),SizedBox(
      width: mediaQueryWidth(context, .01),
    ),Icon(Icons.more_vert_outlined,color: Colors.black,),SizedBox(
      width: mediaQueryWidth(context, .01),)],);
  }
}
