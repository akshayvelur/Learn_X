
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:learn_x/core/theme/bloc/themes_bloc.dart';
import 'package:learn_x/core/utils/mediaquery.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({
    super.key,
    required this.isDark,
  });

  final bool isDark;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      title: Row(
        children: [
          Image.asset(isDark?
            "assets/graduate-cap.png":"assets/graduate-cap (1).png",
            width: mediaQueryWidth(context, 0.08),
            height: mediaQueryHeight(context, 0.08),
          ),
          SizedBox(width: mediaQueryWidth(context, 0.03)),
          Text("LearnX", style: GoogleFonts.roboto(fontSize: 18)),
        ],
      ),
      actions: [
      InkWell(onTap: () =>      context.read<ThemesBloc>().add(ModeEvent()),child:isDark? Image.asset("assets/moon.png", height: mediaQueryHeight(context,0.04 ),width: mediaQueryWidth(context, 0.04),):Image.asset("assets/sun.png", height: mediaQueryHeight(context,0.06 ),width: mediaQueryWidth(context, 0.06),)),
        SizedBox(width: mediaQueryWidth(context, 0.04)),
          Image.asset(isDark?
            "assets/young-man.png":"assets/young-man (1).png",
            width: mediaQueryWidth(context, 0.08),
            height: mediaQueryHeight(context, 0.08),
          ),
        SizedBox(width: mediaQueryWidth(context, 0.07)),
      ],
    );
  }
}
