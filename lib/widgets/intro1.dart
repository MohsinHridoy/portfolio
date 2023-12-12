import 'package:flutter/material.dart';

class Intro1 extends StatefulWidget {
  const Intro1({Key? key}) : super(key: key);

  @override
  State<Intro1> createState() => _Intro1State();
}

class _Intro1State extends State<Intro1> with SingleTickerProviderStateMixin {
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
        children: [
          _buildTopContainer(),
          _buildBottomContainer(),
        ],
      ),
    );
  }

  Widget _buildTopContainer() {
    return Positioned(
      top: 0,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 700,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          color: const Color(0xFFFFF1C5),
          borderRadius: BorderRadius.circular(40),
        ),
        child: Column(
          children: [
            SizedBox(height: 70),
            _buildRotatingImage(),
          ],
        ),
      ),
    );
  }

  Widget _buildRotatingImage() {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        return Transform.rotate(
          angle: _animation.value,
          child: Container(
            width: 303,
            height: 291.85,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/left_icon.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildBottomContainer() {
    return Positioned(
      bottom: 0,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 352,
        decoration: _buildBottomContainerDecoration(),
        child: Column(
          children: [
            SizedBox(height: 50),
            _buildTitle(),
            SizedBox(height: 30),
            _buildDescription(),
            SizedBox(height: 30),
            _buildButtons(),
          ],
        ),
      ),
    );
  }

  ShapeDecoration _buildBottomContainerDecoration() {
    return ShapeDecoration(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(40),
      ),
    );
  }

  Widget _buildTitle() {
    return SizedBox(
      width: 319,
      child: Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: 'Change the way you ',
              style: TextStyle(
                color: const Color(0xFF252525),
                fontSize: 28,
                fontFamily: 'HK Grotesk',
                fontWeight: FontWeight.w700,
                height: 0,
              ),
            ),
            TextSpan(
              text: 'learn something!',
              style: TextStyle(
                color: const Color(0xFFFF6347),
                fontSize: 28,
                fontFamily: 'HK Grotesk',
                fontWeight: FontWeight.w700,
                height: 0,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDescription() {
    return SizedBox(
      width: 319,
      height: 80,
      child: Text(
        'Our dream is to make education in a single\n hand from anywhere at any time with a very low cost...',
        style: TextStyle(
          color: const Color(0xFF777777),
          fontSize: 16,
          fontFamily: 'HK Grotesk',
          fontWeight: FontWeight.w400,
          height: 1.5,
        ),
      ),
    );
  }

  Widget _buildButtons() {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildSkipButton(),
          _buildNextButton(),
        ],
      ),
    );
  }

  Widget _buildSkipButton() {
    return SizedBox(
      width: 200,
      child: Text(
        'SKIP',
        style: TextStyle(
          color: const Color(0xFF676EA0),
          fontSize: 16,
          fontFamily: 'HK Grotesk',
          fontWeight: FontWeight.w700,
          height: 0,
          letterSpacing: 1,
        ),
      ),
    );
  }

  Widget _buildNextButton() {
    return Container(
      width: 97,
      height: 48,
      padding: const EdgeInsets.symmetric(
        vertical: 14,
        horizontal: 8,
      ),
      clipBehavior: Clip.antiAlias,
      decoration: _buildNextButtonDecoration(),
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
      ),
    );
  }

  ShapeDecoration _buildNextButtonDecoration() {
    return ShapeDecoration(
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
        ),
      ],
    );
  }


  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
