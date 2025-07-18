
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:learn_x/core/utils/mediaquery.dart';

class OverallScoreCard extends StatelessWidget {
  const OverallScoreCard({
    super.key,
    required this.isDark,
  });

  final bool isDark;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Container(
        height: mediaQueryHeight(context, .25),
        width: mediaQueryWidth(context, .8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color.fromARGB(43, 167, 243, 182),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 20,
                left: 20,
                right: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Overall Score",
                    style: GoogleFonts.roboto(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        "100%",
                        style: GoogleFonts.roboto(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(width: mediaQueryWidth(context, .02)),
                      Icon(Icons.check_circle, size: 17),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
                top: 10,
              ),
              child: Container(
                height: mediaQueryHeight(context, .008),
                width: mediaQueryWidth(context, .9),
                decoration: BoxDecoration(
                  color: isDark ? Colors.black : Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 23,left: 5,right: 5),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: mediaQueryHeight(context, 0.12),
                    width: mediaQueryWidth(context, 0.33),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color.fromARGB(34, 72, 71, 71),
                      ),
                      borderRadius: BorderRadius.circular(10),
                      color:isDark? Colors.white:Colors.black,
                    ),
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10,left: 10),
                          child: Row(crossAxisAlignment: CrossAxisAlignment.start,
                            children: [Padding(
                              padding: const EdgeInsets.only(top: 10,right: 10),
                              child: Icon(Icons.check_circle,size: 20,),
                            ) ,Column(
                              children: [
                                Text("Correct",style: GoogleFonts.roboto(fontWeight: FontWeight.w500),), Text("Answers",style: GoogleFonts.roboto(fontWeight: FontWeight.w500))
                              ],
                            ),
                           ],),
                        ),
                       Padding(
                         padding: const EdgeInsets.only(left: 12),
                         child: Text("5/5",style: GoogleFonts.roboto(fontSize: 23,fontWeight: FontWeight.w500)),
                       )],
                    ),
                  ),
                  
                  ///
                   Container(
                    height: mediaQueryHeight(context, 0.12),
                    width: mediaQueryWidth(context, 0.33),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color.fromARGB(34, 72, 71, 71),
                      ),
                      borderRadius: BorderRadius.circular(10),
                      color:isDark? Colors.white:Colors.black,
                    ),child: Padding(
                      padding: const EdgeInsets.only(left: 10,right: 10),
                      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [SizedBox(height: mediaQueryHeight(context, 0.015),),
                          Row(children: [
                            Padding(
                                    padding: const EdgeInsets.only(right: 7),
                                    child: Icon(Icons.access_time_filled_outlined,size: 20,),),
                                 Text("Time Spent",style: GoogleFonts.roboto(fontWeight: FontWeight.w500),),  
                          ],),
                          
                       Padding(
                         padding: const EdgeInsets.only(top: 10),
                         child: Text("03:45",style: GoogleFonts.roboto(fontSize: 23,fontWeight: FontWeight.w500)),
                       ) ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
