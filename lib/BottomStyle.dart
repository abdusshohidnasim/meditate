import 'package:flutter/material.dart';


ButtonStyle buttonStyle(FixedSize,backgroundColor){
  return ElevatedButton.styleFrom(
    backgroundColor: backgroundColor, fixedSize: FixedSize,
  );
}