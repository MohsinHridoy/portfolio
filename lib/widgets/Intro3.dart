import 'package:flutter/material.dart';

class Intro3 extends StatefulWidget {
  const Intro3({super.key});

  @override
  State<Intro3> createState() => _Intro3State();
}

class _Intro3State extends State<Intro3> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );

    _animation = Tween<double>(begin: -0.05, end: 0.05).animate(
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
                      return Transform.rotate(
                        angle: _animation.value,
                        child: Container(
                          width: 303,
                          height: 291.85,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/leg.png"),
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
                            text: 'We dont sell products, we offer ',
                            style: TextStyle(
                              color: Color(0xFF252525),
                              fontSize: 28,
                              fontFamily: 'HK Grotesk',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                          TextSpan(
                            text: 'excellence!',
                            style: TextStyle(
                              color: Color(0xFFFF6347),
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
                    child: Row(
                      children: [
                        Container(

                          child: Icon(Icons.offline_pin_outlined,size: 20,color:Colors.white),
                          decoration: BoxDecoration(
                            color:   Colors.red,
                            borderRadius: BorderRadius.circular(12)

                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
                            'Personalised learning programs',
                            style: TextStyle(
                              color: Color(0xFF777777),
                              fontSize: 16,
                              fontFamily: 'HK Grotesk',
                              fontWeight: FontWeight.w400,
                              height: 1.5, // Adjust the height value
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 319,
                    child: Row(
                      children: [
                        Container(

                          child: Icon(Icons.offline_pin_outlined,size: 20,color:Colors.white),
                          decoration: BoxDecoration(
                            color:   Colors.red,
                            borderRadius: BorderRadius.circular(12)

                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 1.0),
                          child: Text(
                            'Democratise access to quality education',
                            style: TextStyle(
                              color: Color(0xFF777777),
                              fontSize: 15,
                              fontFamily: 'HK Grotesk',
                              fontWeight: FontWeight.w400,
                              height: 1.5, // Adjust the height value
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 319,
                    child: Row(
                      children: [
                        Container(

                          child: Icon(Icons.offline_pin_outlined,size: 20,color:Colors.white),
                          decoration: BoxDecoration(
                              color:   Colors.red,
                              borderRadius: BorderRadius.circular(12)

                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
                            'Personalised learning programs',
                            style: TextStyle(
                              color: Color(0xFF777777),
                              fontSize: 16,
                              fontFamily: 'HK Grotesk',
                              fontWeight: FontWeight.w400,
                              height: 1.5, // Adjust the height value
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: 319,
                height: 52,
                padding: const EdgeInsets.only(
                  top: 16,
                  left: 102,
                  right: 102,
                  bottom: 15,
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
              child: Text(
                'GET STARTED',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontFamily: 'HK Grotesk',
                  fontWeight: FontWeight.w600,
                  height: 0,
                  letterSpacing: 1,
                ),
              ),)



                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
