
import 'package:flutter/material.dart';
import 'package:learn_x/presentation/learing_screen.dart/learing_screen.dart';
import 'package:learn_x/presentation/wigets/ineractive_screen_widget.dart/how_to_complete.dart';

class DraggableWidget extends StatelessWidget {
  const DraggableWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}
