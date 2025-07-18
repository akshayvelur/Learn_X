
import 'package:flutter/material.dart';

class ContinueWith extends StatelessWidget {
  const ContinueWith({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30,left: 10,right:10),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [ Expanded(child: Divider( color: const Color.fromARGB(255, 128, 127, 127),)),Padding(
        padding: const EdgeInsets.only(left: 10,right: 10),
        child: Text("or continue with"),
      ),Expanded(child: Divider( color: const Color.fromARGB(255, 128, 127, 127),)) ],),
    );
  }
}
