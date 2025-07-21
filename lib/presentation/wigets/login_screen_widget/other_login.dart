
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_x/core/utils/list_icon.dart';
import 'package:learn_x/core/utils/mediaquery.dart';
import 'package:learn_x/domine/google_authentication.dart';
import 'package:learn_x/presentation/login_screen/bloc/login_bloc.dart';
import 'package:learn_x/presentation/wigets/splash_screen_widget/logo.dart';

class OtherLoginMethord extends StatelessWidget {
  const OtherLoginMethord({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
       for(int i=0;i<signIcon.length;i++) Padding(
          padding: const EdgeInsets.only(top: 17,left: 14),
          child:Container(
            height: mediaQueryHeight(context, 0.06),
            width: mediaQueryWidth(context, 0.25),
            decoration: BoxDecoration(
              border: Border.all(
                color: const Color.fromARGB(255, 128, 127, 127),
              ),
              borderRadius: BorderRadius.circular(5),
            ),
            child: InkWell(onTap: () {
              
              if(i==0){
             context.read<LoginBloc>().add(SignInEvent());
              }
            },
              child: Center(
                child: Image.asset(
                  signIcon[i],
                  width: mediaQueryWidth(context, 0.04),
                  height: mediaQueryHeight(context, 0.04),fit: BoxFit.contain,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
