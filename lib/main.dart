import 'package:flutter/material.dart';
import 'package:untitled1/screens/cert/cert.dart';
import 'package:untitled1/screens/home/homeClock.dart';
import 'package:untitled1/screens/nightmood/home/nightmoodscreen.dart';
import 'package:untitled1/screens/productdetails/productsDetails.dart';
import 'package:untitled1/screens/rough/rough.dart';
import 'package:untitled1/screens/video/video/video.dart';
import 'package:untitled1/screens/video/video1.dart';
import 'package:untitled1/widgets/Intro3.dart';
import 'package:untitled1/widgets/intro1.dart';
import 'package:untitled1/widgets/intro2.dart';
import 'package:untitled1/widgets/slider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage2(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  PageController _pageController = PageController();
  int _currentPage = 0;
  List color=[
    Color(0xFFFFC718),
    Color(0xFFF94F46),
    Color(0xFF5EADF3)
  ];  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() {
                _currentPage = index;
              });
            },
            children: [
              Intro1(),
              Intro2(),
              Intro3()

            ],
          ),
          Positioned(
            top: 450,
            left: 0,
            right: 0,
            child: Container(
              width: 300,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buildDot(0),
                  buildDot(1),
                  buildDot(2),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildDot(int index) {
    List<Color> colors = [
      Color(0xFFFFC718),
      Color(0xFFF94F46),
      Color(0xFF5EADF3)
    ];

    Color selectedColor = colors[index]; // Color for the selected index

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child:  Container(
          width: _currentPage == index ? 30 : 20,
          height: 10,
          decoration: BoxDecoration(
            shape: _currentPage == index ? BoxShape.rectangle : BoxShape.circle,
            borderRadius: _currentPage == index ? BorderRadius.circular(8) : null,
            color: _currentPage == index ? selectedColor : selectedColor.withOpacity(0.20),
          ),
        ),

    );
  }

}
