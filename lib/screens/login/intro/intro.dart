import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:untitled1/screens/login/login/login.dart';
import 'package:untitled1/widgets/Girl.dart';
import 'dart:async';
import 'dart:math' as math;


import '../../../widgets/animatednestedcircle.dart';

class Intro extends StatefulWidget {
  @override
  State<Intro> createState() => _IntroState();
}

class _IntroState extends State<Intro> with TickerProviderStateMixin  {
  bool isBlueVisible = true;

  late AnimationController _controller1;
  late AnimationController _controller2;

  @override
  void initState() {
    super.initState();

    _controller1 = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );

    _controller2 = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );

    // Start a periodic timer to toggle visibility every second
    Timer.periodic(Duration(seconds: 1), (Timer timer) {
      setState(() {
        isBlueVisible = !isBlueVisible;
      });
    });
  }

  @override
  void dispose() {
    _controller1.dispose();
    _controller2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double _animationValue = 0.0; // To control the animation value

    return MaterialApp(
      home: Scaffold(
        // appBar: AppBar(
        //   title: Text('Dashed Curved Line Example'),
        // ),
        body: Container(
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0.00, -1.00),
              end: Alignment(0, 1),
              colors: [Color(0xFF4A87E9), Color(0x004A87E9)],
            ),
          ),
          child: Stack(
            children: [
              Positioned(top: 10, child: MyAnimationScreen()),
              Positioned(top: 100, child: MyAnimationScreen2()),
              Positioned(top: 180, child: MyAnimationScreen3()),
              Positioned(
                  bottom: 50,
                  left: 35,
                  child: Container(
                    height: 400,
                    width: 400,
                    child: Stack(children: [
                      AnimatedOpacity(
                        opacity: isBlueVisible ? 1.0 : 0.0,
                        duration: Duration(seconds: 1),
                        child: Container(
                          width: 330.0, // Width of the inner circle
                          height: 330.0, // Height of the inner circle
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFF225FC1)
                                .withOpacity(.8), // Color of the inner circle
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
                        top: 50,
                        left: 30,
                        child: Container(
                          width: 270.0, // Width of the outer circle
                          height: 270.0, // Height of the outer circle
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color:
                                Color(0xFF225FC1), // Color of the outer circle
                          ),
                        ),
                      ),
                    ]),
                  )),
              Positioned(
                bottom: 200,
                left: 50,
                child: Container(
                    height: 300,
                    width: 300,
                    // color: Colors.red,
                    child: Stack(
                      children: [

                        Positioned(
                          top: 30,
                          left: 190,
                          child: Container(width:100,child: ShakingGoodbyeEffect()), // Use the animated widget for the "goodbye" effect
                        ),

                    Positioned(
                      top: 26,
                      left: 50,
                      child: Container(width:100,child: ShakingGoodbyeEffect1()),),
                        Positioned(
                          top: 65,
                          left:81 ,
                          child: Image.asset("assets/intro/girl/neck.png"),
                          width: 50,
                          height: 25,
                        ),

                        Positioned(
                          bottom: 40,
                          left: 50,
                          child: Image.asset("assets/intro/login/body.png"),
                          width: 200,
                          height: 200,
                        ),
                        Positioned(
                          top: 15,
                          left: 145,
                          child: Image.asset("assets/intro/login/boy_head.png"),
                          width: 80,
                          height: 80,
                        ),


                        Positioned(
                          top: 57,
                          left: 92,
                          child: Image.asset("assets/intro/girl/face4.png"),
                          width: 25,
                          height: 25,
                        ),
                        Positioned(
                          top: 95,
                          left: 110,
                          child: Image.asset("assets/intro/login/b_left_hand.png"),
                          width: 45,
                          height: 45,
                        ),
                        Positioned(
                          top: 100,
                          left: 102,
                          child: Container(width:100,child: ShakingGoodbyeEffect2()),),


                        Positioned(
                          top: 70,
                          left: 20,
                          child: Image.asset("assets/intro/login/g_right_hand.png"),
                          width: 80,
                          height: 60,
                        ),

                        // width: 60,
                          // height: 60,


                      ],
                    )


                ),
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 269,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Hey! Welcome',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF171930),
                            fontSize: 32,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w700,
                            height: 0.04,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          width: 287,
                          child: Opacity(
                            opacity: 0.60,
                            child: Text(
                              'We are delighted to have you among us. We would like to extend our warmest welcome and good wishes!',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF171930),
                                fontSize: 13,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400,
                                // height: 0.12,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: (){
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                builder: (context) => Login(), // Replace with the actual widget for your next screen
                            ));
                          },
                          child: Container(
                            width: 335,
                            height: 52,
                            decoration: ShapeDecoration(
                              gradient: LinearGradient(
                                begin: Alignment(0.76, -0.66),
                                end: Alignment(-0.76, 0.66),
                                colors: [Color(0xFF266ED7), Color(0xFF4D8AEB)],
                              ),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8)),
                              shadows: [
                                BoxShadow(
                                  color: Color(0x891460D0),
                                  blurRadius: 23,
                                  offset: Offset(0, 11),
                                  spreadRadius: -11,
                                )
                              ],
                            ),
                            child: Center(
                              child: Text(
                                'Let’s Explore',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w500,
                                  height: 0.10,
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
class AnimatedGoodbyeEffect extends StatefulWidget {
  @override
  _AnimatedGoodbyeEffectState createState() => _AnimatedGoodbyeEffectState();
}

class _AnimatedGoodbyeEffectState extends State<AnimatedGoodbyeEffect>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );

    _animation = Tween<double>(
      begin: -30.0,
      end: 30.0,
    ).animate(
      CurvedAnimation(
        curve: Curves.easeInOut,
        parent: _controller,
      ),
    );

    _controller.repeat(reverse: true); // Repeating the animation

    // Remove the listener for handling the completion, as repeat will take care of it
    // _controller.addStatusListener((status) {
    //   if (status == AnimationStatus.completed) {
    //     _controller.reverse();
    //   } else if (status == AnimationStatus.dismissed) {
    //     _controller.forward();
    //   }
    // });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return Positioned(
          top: 30,
          left: 250.0 + _animation.value,
          child: Image.asset(
            "assets/intro/login/boy_left_hand.png",
            width: 70,
            height: 70,
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

class ShakingGoodbyeEffect extends StatefulWidget {
  @override
  _ShakingGoodbyeEffectState createState() => _ShakingGoodbyeEffectState();
}

class _ShakingGoodbyeEffectState extends State<ShakingGoodbyeEffect>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    );

    _animation = Tween<double>(
      begin: 0.0, // Start angle in degrees
      end: 10.0, // End angle in degrees
    ).animate(
      CurvedAnimation(
        curve: Curves.easeInOut,
        parent: _controller,
      ),
    );

    // This listener will trigger the reverse animation when the forward animation completes
    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _controller.reverse();
      } else if (status == AnimationStatus.dismissed) {
        _controller.forward();
      }
    });

    // Start the animation
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return Transform.rotate(
          angle: _animation.value * math.pi / 180.0,
          child: child,
        );
      },
      child: Image.asset(
        "assets/intro/login/boy_left_hand.png", // Replace with the actual path to your body image
        width: 70,
        height: 70,
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}



class ShakingGoodbyeEffect1 extends StatefulWidget {
  @override
  _ShakingGoodbyeEffectState1 createState() => _ShakingGoodbyeEffectState1();
}

class _ShakingGoodbyeEffectState1 extends State<ShakingGoodbyeEffect1>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    );

    _animation = Tween<double>(
      begin: 0.0, // Start angle in degrees
      end: 10.0, // End angle in degrees
    ).animate(
      CurvedAnimation(
        curve: Curves.easeInOut,
        parent: _controller,
      ),
    );

    // This listener will trigger the reverse animation when the forward animation completes
    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _controller.reverse();
      } else if (status == AnimationStatus.dismissed) {
        _controller.forward();
      }
    });

    // Start the animation
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return Transform.rotate(
          angle: _animation.value * math.pi / 180.0,
          child: child,
        );
      },
      child: Image.asset(
        "assets/intro/login/girl_head1.png",
        width: 70,
        height: 70,
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}


class ShakingGoodbyeEffect2 extends StatefulWidget {
  @override
  _ShakingGoodbyeEffectState2 createState() => _ShakingGoodbyeEffectState2();
}

class _ShakingGoodbyeEffectState2 extends State<ShakingGoodbyeEffect2>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    );

    _animation = Tween<double>(
      begin: 0.0, // Start angle in degrees
      end: 10.0, // End angle in degrees
    ).animate(
      CurvedAnimation(
        curve: Curves.easeInOut,
        parent: _controller,
      ),
    );

    // This listener will trigger the reverse animation when the forward animation completes
    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _controller.reverse();
      } else if (status == AnimationStatus.dismissed) {
        _controller.forward();
      }
    });

    // Start the animation
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return Transform.rotate(
          angle: _animation.value * math.pi / 180.0,
          child: child,
        );
      },
      child: Image.asset(
        "assets/intro/login/left_hand.png",
        width: 45,
        height: 45,
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}


class MyAnimationScreen extends StatefulWidget {
  @override
  _MyAnimationScreenState createState() => _MyAnimationScreenState();
}

class _MyAnimationScreenState extends State<MyAnimationScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(seconds: 2),
      vsync: this,
    );
    _animation = Tween<double>(begin: -1, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOutQuad,
      ),
    );
    _controller.repeat(reverse: true);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 400,
        height: 100,
        // color: Colors.red,
        child: Stack(
          children: [
            CustomPaint(
              painter: DashedCurvePainter(),
              child: Container(), // Empty container to take the full size
            ),
            Positioned(
              top: -100,
              left: 190,
              child: AnimatedBuilder(
                animation: _controller,
                builder: (context, child) {
                  double positionOnPath = _animation.value;

                  return Transform.translate(
                    offset: calculatePositionOnPath(positionOnPath),
                    child: Transform(
                      transform: Matrix4.identity()
                        ..translate(0.0, 0.0)
                        ..rotateZ(0.26),
                      child: Container(
                        width: 60,  // Adjust the size based on your image dimensions
                        height: 60, // Adjust the size based on your image dimensions
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Image.asset(
                          "assets/intro/login/man1.png",
                          width: 60,  // Adjust the size based on your image dimensions
                          height: 60, // Adjust the size based on your image dimensions
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),

          ],
        ),
      ),
    );
  }

  Offset calculatePositionOnPath(double t) {
    // Use the quadratic Bezier formula to calculate the position on the curve
    double x = 200 * t;
    double y = 100 + 50 * t * t;

    return Offset(x, y);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

class MyAnimationScreen2 extends StatefulWidget {
  @override
  _MyAnimationScreen2State createState() => _MyAnimationScreen2State();
}

class _MyAnimationScreen2State extends State<MyAnimationScreen2>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(seconds: 2),
      vsync: this,
    );
    _animation = Tween<double>(begin: 1, end: -1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOutQuad,
      ),
    );
    _controller.repeat(reverse: true);
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 400,
        height: 100,
        // color: Colors.red,
        child: Stack(
          children: [
            CustomPaint(
              painter: DashedCurvePainter(),
              child: Container(), // Empty container to take the full size
            ),
            Positioned(
              top: -100,
              left: 190,
              child: AnimatedBuilder(
                animation: _controller,
                builder: (context, child) {
                  // Use _animation.value to interpolate along the path
                  double positionOnPath = _animation.value;

                  return Transform.translate(
                    offset: calculatePositionOnPath(positionOnPath),
                    child: Transform(
                      transform: Matrix4.identity()
                        ..translate(0.0, 0.0)
                        ..rotateZ(0.26),
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.yellow,
                          shape: BoxShape.circle,
                        ),
                        child: Image.asset(
                          "assets/intro/login/man2.png",
                          width: 4.0,
                          height: 5.0,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Offset calculatePositionOnPath(double t) {
    // Use the quadratic Bezier formula to calculate the position on the curve
    double x = 200 * t;
    double y = 100 + 50 * t * t;

    return Offset(x, y);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

class MyAnimationScreen3 extends StatefulWidget {
  @override
  _MyAnimationScreen3State createState() => _MyAnimationScreen3State();
}

class _MyAnimationScreen3State extends State<MyAnimationScreen3>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(seconds: 2),
      vsync: this,
    );
    _animation = Tween<double>(begin: 1, end: -1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOutQuad,
      ),
    );
    _controller.repeat(reverse: true);
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 400,
        height: 130,
        // color: Colors.red,
        child: Stack(
          children: [
            CustomPaint(
              painter: DashedCurvePainter(),
              child: Container(), // Empty container to take the full size
            ),
            Positioned(
              top: -100,
              left: 190,
              child: AnimatedBuilder(
                animation: _controller,
                builder: (context, child) {
                  // Use _animation.value to interpolate along the path
                  double positionOnPath = _animation.value;

                  return Transform.translate(
                    offset: calculatePositionOnPath(positionOnPath),
                    child: Transform(
                      transform: Matrix4.identity()
                        ..translate(0.0, 0.0)
                        ..rotateZ(0.26),
                      child: Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Colors.yellow,
                          shape: BoxShape.circle,
                        ),
                        child: Image.asset(
                          "assets/intro/login/man3.png",
                          width: 4.0,
                          height: 5.0,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Offset calculatePositionOnPath(double t) {
    // Use the quadratic Bezier formula to calculate the position on the curve
    double x = 200 * t;
    double y = 100 + 50 * t * t;

    return Offset(x, y);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

class DashedCurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = Colors.grey
      ..strokeWidth = 2.0
      ..style = PaintingStyle.stroke;

    final Path path = Path()
      ..moveTo(0, size.height / 2)
      ..quadraticBezierTo(
        size.width / 2,
        0,
        size.width,
        size.height / 2,
      );

    final Path dashedPath = Path();
    final double dashWidth = 5.0;
    final double dashSpace = 5.0;

    final PathMetrics pathMetrics = path.computeMetrics();

    for (final PathMetric metric in pathMetrics) {
      double distance = 0.0;

      while (distance < metric.length) {
        final double length = distance + dashWidth > metric.length
            ? metric.length - distance
            : dashWidth;

        dashedPath.addPath(
            metric.extractPath(distance, distance + length), Offset.zero);
        distance += dashWidth + dashSpace;
      }
    }

    canvas.drawPath(dashedPath, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
