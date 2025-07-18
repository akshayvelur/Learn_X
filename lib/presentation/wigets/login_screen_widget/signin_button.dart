
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:learn_x/core/utils/mediaquery.dart';
import 'package:learn_x/presentation/login_screen/bloc/login_bloc.dart';

class SignInButton extends StatelessWidget {
  const SignInButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 7),
      child: InkWell(onTap: () =>context.read<LoginBloc>().add(SignInEvent()) ,
        child: Container(
          height: mediaQueryHeight(context, 0.06),
          width: mediaQueryWidth(context, 0.81),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.black,
          ),child: Center(child: Text("Sign In",style:GoogleFonts.roboto(fontSize: 17,fontWeight: FontWeight.w500,color: Colors.white) ,),),
        ),
      ),
    );
  }
}
