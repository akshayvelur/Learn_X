import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:learn_x/core/utils/list_icon.dart';
import 'package:learn_x/core/utils/mediaquery.dart';
import 'package:learn_x/presentation/finish_screen/finish_screen.dart';
import 'package:learn_x/presentation/learing_screen.dart/learing_screen.dart';
import 'package:learn_x/presentation/login_screen/bloc/login_bloc.dart';
import 'package:learn_x/presentation/wigets/login_screen_widget/common_textfeild.dart';
import 'package:learn_x/presentation/wigets/login_screen_widget/continue.dart';
import 'package:learn_x/presentation/wigets/login_screen_widget/dont_have_account.dart';
import 'package:learn_x/presentation/wigets/login_screen_widget/email_text.dart';
import 'package:learn_x/presentation/wigets/login_screen_widget/login_logo.dart';
import 'package:learn_x/presentation/wigets/login_screen_widget/other_login.dart';
import 'package:learn_x/presentation/wigets/login_screen_widget/remember_forgor.dart';
import 'package:learn_x/presentation/wigets/login_screen_widget/signin_button.dart';
import 'package:learn_x/presentation/wigets/login_screen_widget/welcome_sub_text.dart';
import 'package:learn_x/presentation/wigets/login_screen_widget/welcome_text.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    bool check = false;
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return BlocConsumer<LoginBloc, LoginState>(
      listener: (context, state) {
        // TODO: implement listener
        if (state is CheckboxState) {
          check = state.check;
        }
        if(state is SignInState){
          Navigator.pushReplacement(context,MaterialPageRoute(builder:(context) => LearingScreen(), ));
        }
      },
      builder: (context, state) {
        return Scaffold(
          body: Padding(
            padding: const EdgeInsets.only(left: 25, right: 25),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  LoginLogo(),
                  WelcomeText(),
                  WelcomeSubText(),
                  EmailText(),
                  // email feild
                  CommonTextFormfeild(
                    textEditingController: emailController,
                    prefixIcons: Icon(
                      Icons.mail_outline,
                      color: const Color.fromARGB(255, 128, 127, 127),
                    ),
                    hindText: "Enter your email",
                  ),
                  PasswordText(),
                  //password feild
                  CommonTextFormfeild(
                    textEditingController: passwordController,
                    prefixIcons: Icon(
                      Icons.lock,
                      color: const Color.fromARGB(255, 128, 127, 127),
                    ),
                    hindText: "Enter your password ",
                    suffixer: Icon(Icons.remove_red_eye),
                  ),
                  RememberMeAndForgot(check: check),
                  SignInButton(),
                  ContinueWith(),
                  OtherLoginMethord(),
                  DontHaveAccount()
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
