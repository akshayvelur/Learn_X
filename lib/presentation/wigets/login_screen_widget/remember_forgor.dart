
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:learn_x/core/utils/mediaquery.dart';
import 'package:learn_x/presentation/login_screen/bloc/login_bloc.dart';

class RememberMeAndForgot extends StatelessWidget {
  const RememberMeAndForgot({
    super.key,required this.check
  });
final bool check;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Checkbox(value: check, onChanged: (value) {context.read<LoginBloc>().add(CheckBoxEvent(check: check));}
            ,fillColor: WidgetStatePropertyAll(Colors.transparent),),
          ),
          Text(
            "Remember me",
            style: GoogleFonts.notoSansNKo(
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(width: mediaQueryWidth(context, 0.15)),
          Text(
            "Forgot password?",
            style: GoogleFonts.notoSansNKo(
              fontSize: 14,
              fontWeight: FontWeight.w800,
            ),
          ),
        ],
      ),
    );
  }
}
