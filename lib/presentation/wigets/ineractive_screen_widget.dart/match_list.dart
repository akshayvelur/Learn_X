import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:learn_x/presentation/learing_screen.dart/learing_screen.dart';
import 'package:learn_x/presentation/wigets/ineractive_screen_widget.dart/build_dragwidget.dart';

Row MatchList(BuildContext contex,Map<String,String> choice,Map<String,bool> myscore) {
    return Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    for (var emoji in choice.keys)
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 0,
                              right: 8,
                              bottom: 10,
                              top: 10,
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  color: const Color.fromARGB(
                                    158,
                                    135,
                                    134,
                                    134,
                                  ),
                                ),
                              ),
                              height: 60,
                              width: 140,
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text(
                                    emoji,
                                    style: GoogleFonts.roboto(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward,
                            color: const Color.fromARGB(255, 182, 179, 179),
                          ),
                         buildDragTarget(contex,keyText: emoji, myscore: myscore, choice: choice )
                        ],
                      ),
                  ],
                ),
              ],
            );
  }