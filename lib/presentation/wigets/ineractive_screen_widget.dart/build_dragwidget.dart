
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:learn_x/core/utils/mediaquery.dart';
import 'package:learn_x/presentation/finish_screen/finish_screen.dart';
import 'package:learn_x/presentation/learing_screen.dart/bloc/learing_bloc.dart';

Widget buildDragTarget(BuildContext context, {
  required String keyText,
  required Map<String, bool> myscore,
  required Map<String, String> choice,
}) {
  return DragTarget<String>(
    builder: (BuildContext context, List<String?> incoming, List rejected) {
      if (myscore[keyText] == true) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.grey),
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Expanded(child: Text(choice[keyText]!)),
                    Icon(Icons.check, color: Colors.grey),
                  ],
                ),
              ),
            ),
          ),
        );
      } else {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 150,
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.grey),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("?", style: GoogleFonts.roboto(fontSize: 20)),
                  Text(
                    "=",
                    style: GoogleFonts.roboto(fontSize: 30, color: Colors.grey),
                  ),
                ],
              ),
            ),
          ),
        );
      }
    },
    onWillAccept: (data) => data == keyText,
    onAccept: (data) {
      myscore[keyText] = true; 
      context.read<LearingBloc>().add(DragUpdateEvent(score: myscore));
    },
  );
}
