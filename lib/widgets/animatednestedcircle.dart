import 'dart:async';

import 'package:flutter/material.dart';


class AnimatedNestedCircles extends StatefulWidget {
  @override
  _AnimatedNestedCirclesState createState() => _AnimatedNestedCirclesState();
}

class _AnimatedNestedCirclesState extends State<AnimatedNestedCircles> {
  bool isBlueVisible = true;

  @override
  void initState() {
    super.initState();
// Start a periodic timer to toggle visibility every second
    Timer.periodic(Duration(seconds: 1), (Timer timer) {
      setState(() {
        isBlueVisible = !isBlueVisible;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 500,
        width: 500,
        child: Stack(
            children:[
              AnimatedOpacity(
                opacity: isBlueVisible ? 1.0 : 0.0,
                duration: Duration(seconds: 1),
                child: Container(
                  width: 330.0, // Width of the inner circle
                  height: 330.0, // Height of the inner circle
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFF225FC1).withOpacity(.8), // Color of the inner circle
                  ),
                  child: Center(
                    child: Text(
                      'Inner Circle',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),

              Positioned(
                top:50,
                left:30,
                child: Container(
                  width: 270.0, // Width of the outer circle
                  height: 270.0, // Height of the outer circle
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFF225FC1), // Color of the outer circle
                  ),

                ),
              ),

            ]
        ),
      ),
    );
  }
}