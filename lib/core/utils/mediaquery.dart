import 'package:flutter/material.dart';

mediaQueryHeight(context ,double x){
  return MediaQuery.of(context).size.height*x;
}

mediaQueryWidth(context ,double x){
  return MediaQuery.of(context).size.width*x;
}