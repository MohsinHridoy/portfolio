
import 'package:flutter/material.dart';


class Intro2 extends StatefulWidget  {
  const Intro2({super.key});

  @override
  State<Intro2> createState() => _Intro2State();
}

class _Intro2State extends State<Intro2>  with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );

    _animation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
    );

    _controller.repeat(reverse: true);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children:
        [
          Positioned(
            top: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 700, // Adjust this value based on your needs
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                color: Color(0xFFFFF1C5),
                borderRadius: BorderRadius.circular(40),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 70,
                  ),
                  AnimatedBuilder(
                    animation: _animation,
                    builder: (context, child) {
                      return Transform.scale(
                        scale: 0.5 + (_animation.value * 1.5), // Scale from 0.5 to 2.0
                        child: Container(
                          width: 50 + (_animation.value * 150), // Initial width + scale factor
                          height: 50 + (_animation.value * 150), // Initial height + scale factor
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/home.png"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 352,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40),
                ),
              ),

              child: Column(
                children: [
                  SizedBox(height: 50,),

                  SizedBox(
                    width: 319,
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'Guided and Live',
                            style: TextStyle(
                              color: Color(0xFFFF6347),
                              fontSize: 28,
                              fontFamily: 'HK Grotesk',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                          TextSpan(
                            text: ' courses to help you out',
                            style: TextStyle(
                              color: Color(0xFF252525),
                              fontSize: 28,
                              fontFamily: 'HK Grotesk',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 30,),
                  SizedBox(
                    width: 319,
                    height: 80,
                    child: Text(
                      'Our dream is to make education in a single\n hand from anywhere at any time with a very low cost...',
                      style: TextStyle(
                        color: Color(0xFF777777),
                        fontSize: 16,
                        fontFamily: 'HK Grotesk',
                        fontWeight: FontWeight.w400,
                        height: 1.5, // Adjust the height value
                      ),
                    ),
                  ),
                  SizedBox(height: 30,),

                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 200,
                          child: Text(
                            'SKIP',
                            style: TextStyle(
                              color: Color(0xFF676EA0),
                              fontSize: 16,
                              fontFamily: 'HK Grotesk',
                              fontWeight: FontWeight.w700,
                              height: 0,
                              letterSpacing: 1,
                            ),
                          ),
                        ),

                        Container(
                          width: 97,
                          height: 48,
                          padding: const EdgeInsets.only(
                            top: 14,
                            left: 22,
                            right: 8,
                            bottom: 13,
                          ),
                          clipBehavior: Clip.antiAlias,
                          decoration: ShapeDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(0.99, -0.15),
                              end: Alignment(-0.99, 0.15),
                              colors: [Color(0xFFFF6347), Color(0xFFFF5DB4)],
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(73),
                            ),
                            shadows: [
                              BoxShadow(
                                color: Color(0x66EE547A),
                                blurRadius: 13,
                                offset: Offset(3, 9),
                                spreadRadius: -5,
                              )
                            ],
                          ),
                        child: Center(
                          child: Text(
                            'NEXT',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'HK Grotesk',
                              fontWeight: FontWeight.w600,
                              height: 0,
                              letterSpacing: 1,
                            ),
                          ),
                        ),),
                      ],
                    ),
                  ),


                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
