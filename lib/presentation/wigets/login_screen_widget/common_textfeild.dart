
import 'package:flutter/material.dart';

class CommonTextFormfeild extends StatelessWidget {
  const CommonTextFormfeild({
    super.key,
    required this.textEditingController,
    required this.prefixIcons,
    required this.hindText,this.suffixer
  });

  final TextEditingController textEditingController;
  final Icon prefixIcons;
  final String hindText;
  final Icon ?suffixer;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5,left: 10,right: 10),
      child: TextFormField(
        controller:textEditingController ,
        decoration: InputDecoration(
          border: OutlineInputBorder(),prefixIcon: prefixIcons,
          contentPadding: EdgeInsets.only(left: 50),
        hintText: hindText,
        suffixIcon:suffixer!= null?suffixer:null ),
        
      ),
    );
  }
}
