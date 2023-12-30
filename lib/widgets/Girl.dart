import 'package:flutter/material.dart';


class GirlShape extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.black12,
      width: 150.0,
      height: 250.0,
      child: Stack(
        children: [
          // Head


          Positioned(
            top: 45.0,
            left: 55.0,
            child: Container(
              width: 170.0,
              height: 200.0,
              // decoration: BoxDecoration(
              //   color: Colors.pink,
              //   shape: BoxShape.circle,
              // ),
              child: Stack(children: [
                Positioned(
                    top: 1,
                    child: Image.asset("assets/intro/girl/hair1.png",
                        width: 35.0, height: 25.0)),
                Positioned(
                    top: 5,
                    child: Image.asset("assets/intro/girl/hair.png",
                        width: 35.0, height: 45.0)),

                Positioned(
                    top: 4,
                    child: Image.asset("assets/intro/girl/face.png",
                        width: 35.0, height: 25.0)),
                Image.asset("assets/intro/girl/ear_left.png"),
                Positioned(
                    top: 22,
                    left: 15,
                    child: Image.asset(
                      "assets/intro/girl/teeth.png", width: 6.0,
                      // Set the desired width
                      height: 6.0,
                    )),
                Positioned(
                    top: 17,
                    left: 15,
                    child: Image.asset(
                      "assets/intro/girl/nose.png", width: 5.0,
                      // Set the desired width
                      height: 5.0,
                    )),
                Positioned(
                    top: 10,
                    left: 10,
                    child: Image.asset(
                      "assets/intro/girl/eye_left.png", width: 4.0,
                      // Set the desired width
                      height: 5.0,
                    )),
                Positioned(
                    top: 10,
                    left: 18,
                    child: Image.asset(
                      "assets/intro/girl/eye_left.png", width: 4.0,
                      // Set the desired width
                      height: 5.0,
                    )),
                Positioned(
                    top: 8,
                    left: 10,
                    child: Image.asset(
                      "assets/intro/girl/eye_brew_left.png", width: 6.0,
                      // Set the desired width
                      height: 5.0,
                    )),
                Positioned(
                    top: 8,
                    left: 18,
                    child: Image.asset(
                      "assets/intro/girl/eye_brew_right.png", width: 6.0,
                      // Set the desired width
                      height: 5.0,
                    )),
                Positioned(
                    top: 0,
                    left:15,
                    child: Image.asset("assets/intro/girl/hair2.png",
                        width: 15.0, height: 15.0)),
                Positioned(
                    top: 0,
                    left:5,
                    child: Image.asset("assets/intro/girl/hair3.png",
                        width: 15.0, height: 15.0)),
                Positioned(
                    top: 25,
                    left: 14,
                    child: Image.asset(
                      "assets/intro/girl/neck.png", width: 8.0,
                      // Set the desired width
                      height: 10.0,
                    )),

                Positioned(
                    left: 25,
                    child: Image.asset("assets/intro/girl/ear_right.png",width:5,height:5)),
              ]),
            ),
          ),
          Positioned(
            top: 60.0,
            left: 50.0,
            child: Container(
              width: 60.0,
              height: 100.0,
              decoration: BoxDecoration(
                // color: Colors.blue,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Image.asset(
                "assets/intro/girl/body1.png",
                fit: BoxFit.contain,
              ),
            ),
          ),
          Positioned(
              top: 80,
              left: 55,
              child: Image.asset(
                "assets/intro/girl/chest.png", width: 30.0,
                // Set the desired width
                height: 15.0,
              )),

          //arm
          Positioned(
              top: 85,
              left: 35,
              child: Image.asset(
                "assets/intro/girl/arm_left1.png", width: 30.0,
                // Set the desired width
                height: 25.0,
              )),
          Positioned(
              top: 105,
              left: 27,
              child: Image.asset(
                "assets/intro/girl/arm_left2.png", width: 30.0,
                // Set the desired width
                height: 25.0,
              )),
          Positioned(
              top: 90,
              left: 20,
              child: Image.asset(
                "assets/intro/girl/arm_left3.png", width: 30.0,
                // Set the desired width
                height: 40.0,
              )),
          Positioned(
              top: 80,
              left: 20,
              child: Image.asset(
                "assets/intro/girl/finger.png", width: 12.0,
                // Set the desired width
                height: 12.0,
              )),
          Positioned(
              top: 82,
              left: 24,
              child: Image.asset(
                "assets/intro/girl/finger2.png", width: 12.0,
                // Set the desired width
                height: 10.0,
              )),
          Positioned(
              top: 81,
              left: 25,
              child: Image.asset(
                "assets/intro/girl/finger3.png", width: 8.0,
                // Set the desired width
                height: 8.0,
              )),
          Positioned(
              top: 72,
              left: 22,
              child: Image.asset(
                "assets/intro/girl/finger4.png", width: 12.0,
                // Set the desired width
                height: 10.00,
              )),
          Positioned(
              top: 90,
              left: 95,
              child: Image.asset(
                "assets/intro/girl/arm_right1.png", width: 30.0,
                // Set the desired width
                height: 80.0,
              )),
          Positioned(
              top: 135,
              left: 110,
              child: Image.asset(
                "assets/intro/girl/arm_right2.png", width: 12.0,
                // Set the desired width
                height: 80.0,
              )),
          // Body
          //belly

          Positioned(
              top: 138,
              left: 55,
              child: Image.asset(
                "assets/intro/girl/belly.png", width: 35.0,
                // Set the desired width
                // height: 80.0,
              )),
          // Legs
          Positioned(
            top: 130.0,
            left: 40.0,
            child: Container(
              width: 60.0,
              height: 100.0,
              decoration: BoxDecoration(
                //   color: Colors.brown,
                //    borderRadius: BorderRadius.circular(5.0),
              ),
              child: Image.asset(
                "assets/intro/girl/leg.png",
                fit: BoxFit.contain,
              ),
            ),
          ),
          // Positioned(
          //   top: 160.0,
          //   left: 100.0,
          //   child: Container(
          //     width: 10.0,
          //     height: 100.0,
          //     decoration: BoxDecoration(
          //       color: Colors.brown,
          //       borderRadius: BorderRadius.circular(5.0),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
