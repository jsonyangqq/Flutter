
import 'package:flutter/material.dart';

class StackAndAlign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Align(
          alignment: Alignment.topCenter,
          child: Opacity(
            opacity: 1,
            child: Container(
              color: Colors.deepOrangeAccent,
              width: 120,
              height: 120,
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Opacity(
            opacity: 0.6,
            child: Container(
              color: Colors.orangeAccent,
              width: 60,
              height: 60,
            ),
          ),
        )
      ],
    );
  }
}
