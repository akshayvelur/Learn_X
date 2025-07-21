import 'dart:developer';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_x/core/theme/app_them.dart';
import 'package:learn_x/core/theme/bloc/themes_bloc.dart';
import 'package:learn_x/core/utils/mediaquery.dart';
import 'package:learn_x/presentation/login_screen/login_screen.dart';
import 'package:learn_x/presentation/splash_screen/bloc/splash_bloc.dart';
import 'package:learn_x/presentation/wigets/splash_screen_widget/app_subtext.dart';
import 'package:learn_x/presentation/wigets/splash_screen_widget/app_text.dart';
import 'package:learn_x/presentation/wigets/splash_screen_widget/copy_right.dart';
import 'package:learn_x/presentation/wigets/splash_screen_widget/logo.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    context.read<SplashBloc>().add(SplashTimerEvent());
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    bool statu = false;
    return BlocConsumer<SplashBloc, SplashState>(
      listener: (context,state) {
        if (state is SplashTimerState) {
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginScreen(),));
        }
      },
      // TODO: implement listener
      builder: (context, state) {
        return Scaffold(
          body: Column(crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              logo(),
           AppText() ,
           AppSubText(),
           //
           //add loading lottie
           //
           SizedBox(height: 20,)
           ,
           CopyRight()],
          ),
        );
      },
    );
  }
}
