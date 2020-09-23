import 'package:flutter/material.dart';

Widget ChoiceButton(context, title, onPress, color, visibility) {
  return Container(
    width: MediaQuery.of(context).size.width,
    margin: EdgeInsets.only(bottom: 10),
    height: 70,
    child: Visibility(
      visible: visibility,
      child: RaisedButton(
        color: color,
        onPressed: onPress,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: FittedBox(
          child: Text(
            title,
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
        ),
      ),
    ),
  );
}
