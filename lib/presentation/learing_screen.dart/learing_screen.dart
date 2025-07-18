import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:learn_x/core/utils/mediaquery.dart';
import 'package:learn_x/presentation/wigets/finish_screen_widget/score.dart';
import 'package:learn_x/presentation/wigets/ineractive_screen_widget.dart/how_to_complete.dart';
import 'package:learn_x/presentation/wigets/ineractive_screen_widget.dart/interactive_appbar.dart';
import 'package:learn_x/presentation/wigets/ineractive_screen_widget.dart/match_each_element.dart';
import 'package:learn_x/presentation/wigets/ineractive_screen_widget.dart/match_the_follow.dart';

class LearingScreen extends StatefulWidget {
  const LearingScreen({super.key});

  @override
  State<LearingScreen> createState() => _LearingScreenState();
}

Map<String, bool> myscore = {};
final Map choice = {
  "Photosynthesis":
      "Process of plants use to convert light energy to chemical energy",
  "Mitosis": "Cell division process that results in two identical cell",
  "Osmosis": "Movement of water molecules across a semipermeable membrane",
  "Homostasis":
      "Maintaining stable internal conditions despite external changes",
};
List<String> items = ["Photosynthesis", "Mitosis", "Osmosis", "Homostasis"];
int seed = 0;

class _LearingScreenState extends State<LearingScreen> {
  @override
  Widget build(BuildContext context) {
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      for (var emoji in choice.keys)
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 8,
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
                            _buildDragTarget(emoji),
                          ],
                        ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 15),
                child: Text(
                  "Drag the Correct definition to each term:",
                  style: GoogleFonts.roboto(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.end,
                children:
                    choice.keys.where((kye) => myscore[kye] != true).map((
                      emoji,
                    ) {
                      return Draggable<String>(
                        data: emoji,
                        child: Emoji(emoji: emoji),
                        feedback: Emoji(emoji: emoji),
                        childWhenDragging: Emoji(emoji: ""),
                      );
                    }).toList(),
              ),
              HowToComplete(),Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
                  Container(height: mediaQueryHeight(context, .06),width: mediaQueryWidth(context, .4),decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white,border: Border.all(color: Colors.grey)),child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(children: [Icon(Icons.arrow_back),Text("Previous")],),
                  ),)
              ,  Container(height: mediaQueryHeight(context, .06),width: mediaQueryWidth(context, .3),decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.black,border: Border.all(color: Colors.grey)),) ],),
              ),
              SizedBox(height: mediaQueryWidth(context, 0.1)),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDragTarget(kye) {
    return DragTarget<String>(
      builder: (BuildContext contex, List<String?> incoming, List rejected) {
        if (myscore[kye] == true) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: const Color.fromARGB(158, 135, 134, 134),
                ),
              ),

              width: 150,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 10,
                    top: 10,
                    right: 10,
                    bottom: 10,
                  ),
                  child: Row(
                    children: [
                      Expanded(child: Text(choice[kye])),
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
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: const Color.fromARGB(158, 135, 134, 134),
                ),
              ),
              height: 60,
              width: 150,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("?", style: GoogleFonts.roboto(fontSize: 20)),
                    Text(
                      "=",
                      style: GoogleFonts.roboto(
                        fontSize: 30,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        }
      },
      onWillAccept: (data) => data == kye,
      onAccept: (data) {
        setState(() {
          myscore[kye] = true;
        });
      },
      onLeave: (data) {},
    );
  }
}




// correct one

// import 'dart:math';

// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:learn_x/core/utils/mediaquery.dart';
// import 'package:learn_x/presentation/wigets/finish_screen_widget/score.dart';
// import 'package:learn_x/presentation/wigets/ineractive_screen_widget.dart/interactive_appbar.dart';
// import 'package:learn_x/presentation/wigets/ineractive_screen_widget.dart/match_each_element.dart';
// import 'package:learn_x/presentation/wigets/ineractive_screen_widget.dart/match_the_follow.dart';

// class LearingScreen extends StatefulWidget {
//   const LearingScreen({super.key});

//   @override
//   State<LearingScreen> createState() => _LearingScreenState();
// }

// Map<String, bool> myscore = {};
// final Map choice = {
//  "Photosynthesis":  "Process of plants use to convert light energy to chemical energy",
//    "Mitosis":"Cell division process that results in two identical cell",
//   "Osmosis":"Movement of water molecules across a semipermeable membrane",
//   "Homostasis":"Maintaining stable internal conditions despite external changes",
// };
// List<String> items = ["Photosynthesis", "Mitosis", "Osmosis", "Homostasis"];
// int seed = 0;

// class _LearingScreenState extends State<LearingScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: PreferredSize(
//         preferredSize: Size.fromHeight(40),
//         child: InteractiveAppBar(),
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Divider(thickness: 4),
//               MatchTheFollowText(),
//               MatchEachElementText(),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
                 
//                   Column(
//                     children: [
//                       for (int i = 0; i < items.length; i++)
//                         Row(
//                           children: [
//                             Padding(
//                               padding: const EdgeInsets.all(8.0),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(10),
//                                   border: Border.all(color: const Color.fromARGB(158, 135, 134, 134)),
//                                 ),
//                                 height: 60,
//                                 width: 140,
//                              child:Align(alignment: Alignment.centerLeft,child: Padding(
//                                padding: const EdgeInsets.only(left: 10),
//                                child: Text(items[i],style: GoogleFonts.roboto(fontSize: 16,fontWeight: FontWeight.w500),),
//                              )) , ),
//                             ),
//                           Icon(Icons.arrow_forward)
//                           ],
//                         ),
//                     ],
//                   ),
//                   Column(
//                     mainAxisAlignment: MainAxisAlignment.spaceAround,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children:
//                         choice.keys
//                             .map((emoji) => _buildDragTarget(emoji))
//                             .toList(),
//                   ),
//                 ],
//               ),
//                                Column(
//                     mainAxisAlignment: MainAxisAlignment.spaceAround,
//                     crossAxisAlignment: CrossAxisAlignment.end,
//                     children: choice.keys
//                         .where((kye) => myscore[kye] != true)
//                         .map((emoji) {
//                           return Draggable<String>(
//                             data: emoji,
//                             child: Emoji(emoji: emoji),
//                             feedback: Emoji(emoji: emoji),
//                             childWhenDragging: Emoji(emoji:""),
//                           );
//                         }).toList(),
//                   ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildDragTarget(kye) {
//     return DragTarget<String>(
//       builder: (BuildContext contex, List<String?> incoming, List rejected) {
//         if (myscore[kye] ==true) {
//           return Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Container(decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(10),
//                   border: Border.all(color: const Color.fromARGB(158, 135, 134, 134)),
//                 ),
//               height: 60,
//               width: 150,
//               child: Center(child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Text(choice[kye]),
//               )),
//             ),
//           );
//         } else {
//           return Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Container(
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(10),
//                 border: Border.all(color: const Color.fromARGB(158, 135, 134, 134)),
//               ),
//               height: 90,
//               width: 140,
//             ),
//           );
//         }
//       },
//       onWillAccept: (data) => data == kye,
//       onAccept: (data) {
//         setState(() {
//           myscore[kye] = true;
//         });
//       },
//       onLeave: (data) {},
//     );
//   }
// }

// class Emoji extends StatelessWidget {
//   const Emoji({super.key, required  this.emoji});
//   final String emoji;
//   @override
//   Widget build(BuildContext context) {
//     return Material(
//       color: Colors.transparent,
//       child: Container(
//         alignment: Alignment.center,
//         height: 50,
//         padding: EdgeInsets.all(10),
//         child: Text(
//           choice[emoji]??"",
//           style: GoogleFonts.roboto(
//             color: Colors.black,
//             fontSize: 20,
//           ),
//         ),
//       ),
//     );
//   }
// }




// import 'dart:math';

// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:learn_x/core/utils/mediaquery.dart';
// import 'package:learn_x/presentation/wigets/finish_screen_widget/score.dart';
// import 'package:learn_x/presentation/wigets/ineractive_screen_widget.dart/interactive_appbar.dart';
// import 'package:learn_x/presentation/wigets/ineractive_screen_widget.dart/match_each_element.dart';
// import 'package:learn_x/presentation/wigets/ineractive_screen_widget.dart/match_the_follow.dart';

// class LearingScreen extends StatefulWidget {
//   const LearingScreen({super.key});

//   @override
//   State<LearingScreen> createState() => _LearingScreenState();
// }

// Map<String, bool> myscore = {};
// final Map choice = {
//   "a": Colors.amber,
//   "b": Colors.blue,
//   "c": Colors.yellow,
//   "d": Colors.deepOrange,
// };
// List<String> items = ["Photosynthesis", "Mitosis", "Osmosis", "Homostasis"];
// int seed = 0;

// class _LearingScreenState extends State<LearingScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: PreferredSize(
//         preferredSize: Size.fromHeight(40),
//         child: InteractiveAppBar(),
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Divider(thickness: 4),
//               MatchTheFollowText(),
//               MatchEachElementText(),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   //                 Column(
//                   //   mainAxisAlignment: MainAxisAlignment.spaceAround,
//                   //   crossAxisAlignment: CrossAxisAlignment.end,
//                   //   children: choice.keys
//                   //       .where((emoji) => myscore[emoji] != true)
//                   //       .map((emoji) {
//                   //         return Draggable<String>(
//                   //           data: emoji,
//                   //           child: Emoji(emoji: emoji),
//                   //           feedback: Emoji(emoji: emoji),
//                   //           childWhenDragging: Emoji(emoji: ""),
//                   //         );
//                   //       }).toList(),
//                   // ),
//                   Column(
//                     children: [
//                       for (int i = 0; i < items.length; i++)
//                         Row(
//                           children: [
//                             Padding(
//                               padding: const EdgeInsets.all(8.0),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(10),
//                                   border: Border.all(color: const Color.fromARGB(158, 135, 134, 134)),
//                                 ),
//                                 height: 60,
//                                 width: 140,
//                              child:Align(alignment: Alignment.centerLeft,child: Padding(
//                                padding: const EdgeInsets.only(left: 10),
//                                child: Text(items[i],style: GoogleFonts.roboto(fontSize: 16,fontWeight: FontWeight.w500),),
//                              )) , ),
//                             ),
//                           Icon(Icons.arrow_forward)
//                           ],
//                         ),
//                     ],
//                   ),
//                   Column(
//                     mainAxisAlignment: MainAxisAlignment.spaceAround,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children:
//                         choice.keys
//                             .map((emoji) => _buildDragTarget(emoji))
//                             .toList(),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildDragTarget(emoji) {
//     return DragTarget<String>(
//       builder: (BuildContext contex, List<String?> incoming, List rejected) {
//         if (myscore[emoji] == true) {
//           return Container(
//             height: 60,
//             width: 150,
//             child: Center(child: Text("correct")),
//           );
//         } else {
//           return Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Container(
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(10),
//                 border: Border.all(color: const Color.fromARGB(158, 135, 134, 134)),
//               ),
//               height: 90,
//               width: 140,
//             ),
//           );
//         }
//       },
//       onWillAccept: (data) => data == emoji,
//       onAccept: (data) {
//         setState(() {
//           myscore[emoji] = true;
//         });
//       },
//       onLeave: (data) {},
//     );
//   }
// }

// class Emoji extends StatelessWidget {
//   const Emoji({super.key, this.emoji});
//   final String? emoji;
//   @override
//   Widget build(BuildContext context) {
//     return Material(
//       color: Colors.transparent,
//       child: Container(
//         alignment: Alignment.center,
//         height: 50,
//         padding: EdgeInsets.all(10),
//         child: Text(
//           emoji!,
//           style: GoogleFonts.roboto(
//             color: const Color.fromARGB(255, 10, 161, 25),
//             fontSize: 25,
//           ),
//         ),
//       ),
//     );
//   }
// }
