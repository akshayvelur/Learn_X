import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:learn_x/core/utils/list_icon.dart';
import 'package:learn_x/core/utils/mediaquery.dart';
import 'package:learn_x/presentation/finish_screen/finish_screen.dart';
import 'package:learn_x/presentation/learing_screen.dart/bloc/learing_bloc.dart';
import 'package:learn_x/presentation/wigets/finish_screen_widget/score.dart';
import 'package:learn_x/presentation/wigets/ineractive_screen_widget.dart/drage_correct_text.dart';
import 'package:learn_x/presentation/wigets/ineractive_screen_widget.dart/draggable.dart';
import 'package:learn_x/presentation/wigets/ineractive_screen_widget.dart/how_to_complete.dart';
import 'package:learn_x/presentation/wigets/ineractive_screen_widget.dart/interactive_appbar.dart';
import 'package:learn_x/presentation/wigets/ineractive_screen_widget.dart/match_each_element.dart';
import 'package:learn_x/presentation/wigets/ineractive_screen_widget.dart/match_list.dart';
import 'package:learn_x/presentation/wigets/ineractive_screen_widget.dart/match_the_follow.dart';
import 'package:learn_x/presentation/wigets/ineractive_screen_widget.dart/next_navigation.dart';

class LearingScreen extends StatefulWidget {
  const LearingScreen({super.key});

  @override
  State<LearingScreen> createState() => _LearingScreenState();
}

class _LearingScreenState extends State<LearingScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LearingBloc,LearingState>(
      listener: (context, state) {
        if(state is DragUpdateState){
          myscore=state.score;
        }
        // TODO: implement listener
      },
      builder: (context, state) {
        return Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(40),
            child: InteractiveAppBar(),
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Divider(thickness: 4),
                  MatchTheFollowText(),
                  MatchEachElementText(),
                  MatchList(context,choice, myscore),
                  DragTheCorrect(),
                  DraggableWidget(),
                  HowToComplete(),
                  NextNavigation(),
                  
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}