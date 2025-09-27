import 'package:flutter/material.dart';

TextFormField textFormField(hintText,[sufix]){
  bool surtext=true;
  return TextFormField(


    decoration: InputDecoration(
      suffix: sufix,

      hintText: hintText,
      border: OutlineInputBorder(

        borderRadius: BorderRadius.circular(15,),
      )

    ),


  );
}