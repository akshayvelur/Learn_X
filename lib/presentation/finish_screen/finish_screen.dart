import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:learn_x/core/theme/bloc/themes_bloc.dart';
import 'package:learn_x/core/utils/mediaquery.dart';
import 'package:learn_x/presentation/wigets/finish_screen_widget/achievement_text.dart';
import 'package:learn_x/presentation/wigets/finish_screen_widget/common_divider.dart';
import 'package:learn_x/presentation/wigets/finish_screen_widget/finish_app_bar.dart';
import 'package:learn_x/presentation/wigets/finish_screen_widget/navigation_button.dart';
import 'package:learn_x/presentation/wigets/finish_screen_widget/overall_score_card.dart';
import 'package:learn_x/presentation/wigets/finish_screen_widget/perfect_score_widget.dart';
import 'package:learn_x/presentation/wigets/finish_screen_widget/quiz_complete_text.dart';
import 'package:learn_x/presentation/wigets/finish_screen_widget/score.dart';
import 'package:learn_x/presentation/wigets/finish_screen_widget/trophy_icon.dart';
import 'package:learn_x/presentation/wigets/login_screen_widget/signin_button.dart';

class FinishScreen extends StatelessWidget {
  const FinishScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ThemesBloc, ThemeData>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, theme) {
        final isDark = theme.brightness == Brightness.dark;
        return Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(40),
            child: MyAppBar(isDark: isDark),
          ),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TrophyIcon(isDark: isDark),
                PerfectScoreText(),
                QuizCompleteText(),
                OverallScoreCard(isDark: isDark),
                AchievementText(),
                Score(isDark: isDark),
                CommonDivider(),
                CommonNavigationButton(title: "View Detailed Report", clr: true),
                CommonNavigationButton(title: "Continue to Next Quiz", clr: false)],
            ),
          ),
        );
      },
    );
  }
}
