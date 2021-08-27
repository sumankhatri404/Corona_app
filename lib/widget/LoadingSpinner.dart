import 'package:flutter/material.dart';

Future loadingSpinner(BuildContext context){
  return showDialog(context: context, builder:(context)=>AlertDialog(
    title: Row(
      children: [
        CircularProgressIndicator(),
        Padding(
          padding: EdgeInsets.only(left:10),
          child: Text("Loading...",style: TextStyle(fontWeight: FontWeight.bold),),
        )
      ],
    ),
  ));
}