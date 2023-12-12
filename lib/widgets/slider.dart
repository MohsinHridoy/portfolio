import 'dart:math';

import 'package:flutter/material.dart';

class MyApp1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Card Swipe Example'),
        ),
        body: SwipeableCardStack(),
      ),
    );
  }
}

class SwipeableCardStack extends StatefulWidget {
  @override
  _SwipeableCardStackState createState() => _SwipeableCardStackState();
}

class _SwipeableCardStackState extends State<SwipeableCardStack>
    with TickerProviderStateMixin {
  late AnimationController _buttonController;
  late Animation<double> rotate;
  double skew = 0.0;
  double rotation = 0.0;
  String tag = 'some_tag';
  late List<String> cardList;
  late List<String> displayedCardList;


  @override
  void initState() {
    super.initState();

    _buttonController = AnimationController(
      duration: Duration(milliseconds: 1000),
      vsync: this,
    );

    rotate = Tween<double>(
      begin: -0.0,
      end: -40.0,
    ).animate(
      CurvedAnimation(
        parent: _buttonController,
        curve: Curves.ease,
      ),
    );

    cardList = List.generate(8, (index) => 'assets/images/img$index.png');
    displayedCardList = List.from(cardList);
  }

  Future<Null> _swipeAnimation() async {
    try {
      await _buttonController.forward();
    } on TickerCanceled {}
  }

  void swipeLeft() {
    _swipeAnimation();
    setState(() {
      // Handle left swipe action
      cardList.removeAt(0);
      cardList.add('assets/images/img${cardList.length}.png');
      displayedCardList = List.from(cardList);

    });
    print('NOPE');
  }

  void swipeRight() {
    _swipeAnimation();
    setState(() {
      // Handle right swipe action
      cardList.removeAt(0);
      cardList.add('assets/images/img${cardList.length}.png');
      displayedCardList = List.from(cardList);

    });
    print('LIKE');
  }
  Future<void> _delayedRemove(int index) async {
    await _swipeAnimation(); // Wait for the animation to complete

    // Use a short delay before removing the dismissed card
    await Future.delayed(Duration(milliseconds: 500));

    setState(() {
      displayedCardList.removeAt(index);
      cardList.removeAt(index);
    });

    // Check if it was the last card and do any necessary logic
    if (index == displayedCardList.length) {
      print('Last card swiped!');
    }
  }



  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Stack(
      children: List.generate(displayedCardList.length, (index) {
        int rotatingIndex = index % cardList.length;
        String imagePath = cardList[rotatingIndex];

        double topPosition = index * 20.0;

        if (index < displayedCardList.length - 1) {
          topPosition -= (displayedCardList.length - index - 1) * 20.0;
        }

        return Positioned(
          top: topPosition,
          right: 0.0,
          child: Dismissible(
            key: Key(displayedCardList[index]),
            crossAxisEndOffset: -0.3,
            onResize: () {},
            onDismissed: (direction) {
              if (index == displayedCardList.length - 1) {
                print('Last card swiped!');
              }
              _swipeAnimation();
              _delayedRemove(index);
            },
            child: Transform(
              alignment: Alignment.bottomRight,
              transform: Matrix4.skewX(skew),
              child: RotationTransition(
                turns: AlwaysStoppedAnimation(-rotation / 360),
                child: Hero(
                  tag: tag,
                  child: GestureDetector(
                    onTap: () {
                      // Handle card tap
                    },
                    child: Card(
                      color: Colors.transparent,
                      elevation: 4.0,
                      child: Container(
                        width: screenSize.width / (1.2 + index * 0.2),
                        height: screenSize.height / 1.7,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Column(
                          children: <Widget>[
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(8.0),
                                    topRight: Radius.circular(8.0),
                                  ),
                                  image: DecorationImage(
                                    image: AssetImage(imagePath),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    SwipeButton(
                                      text: "NOPE",
                                      onClick: swipeLeft,
                                    ),
                                    SwipeButton(
                                      text: "LIKE",
                                      onClick: swipeRight,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      }),
    );
  }





}

class SwipeButton extends StatelessWidget {
  final String text;
  final VoidCallback onClick;

  SwipeButton({required this.text, required this.onClick});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onClick,
      child: Text(text),
    );
  }
}