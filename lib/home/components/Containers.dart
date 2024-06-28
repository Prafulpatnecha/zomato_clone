
import 'package:flutter/material.dart';

import '../../utils/color.dart';
Padding paddingShowLineText({required String textFind}) {
  return Padding(
    padding: const EdgeInsets.all(9.0),
    child: Column(
      children: [
        Container(
          height: 30,
          // color: Colors.blue,
          child: Stack(
            children: [
              const Align(
                child: Divider(
                  color: Colors.black26,
                  thickness: 0.3,
                ),
              ),
              Align(
                child: Container(
                  color: Colors.white,
                  child: Text(
                    textFind,
                    style: TextStyle(
                        color: Colors.black45,
                        fontFamily: fontLight,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 2,
                        wordSpacing: 2),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    ),
  );
}