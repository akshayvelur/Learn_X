
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:learn_x/core/utils/mediaquery.dart';
import 'package:learn_x/presentation/login_screen/bloc/login_bloc.dart';

class CommonNavigationButton extends StatelessWidget {
  const CommonNavigationButton({
    super.key,required this.title,required this.clr
  });
  final String title;
 final  bool clr;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 7),
      child: InkWell(onTap: (){} ,
        child: Container(
          height: mediaQueryHeight(context, 0.06),
          width: mediaQueryWidth(context, 0.81),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),border: Border.all(color: clr? Colors.white:const Color.fromARGB(255, 85, 84, 84)),
            color:clr? Colors.black:Colors.white,
          ),child: Center(child: Text(title,style:GoogleFonts.roboto(fontSize: 17,fontWeight: FontWeight.w500,color:clr? Colors.white:Colors.black) ,),),
        ),
      ),
    );
  }
}
