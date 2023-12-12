import 'package:flutter/material.dart';


class MyHomePage2 extends StatefulWidget {
  @override
  _MyHomePage2State createState() => _MyHomePage2State();
}

class _MyHomePage2State extends State<MyHomePage2> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Convex Bottom App Bar Example'),
      ),
      body: Center(
        child: Text('Your main content goes here.'),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Container(
          height: 60.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.home),
                onPressed: () {
                  _onItemTapped(0);
                },
              ),
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                  _onItemTapped(1);
                },
              ),
              IconButton(
                icon: Icon(Icons.favorite),
                onPressed: () {
                  _onItemTapped(2);
                },
              ),
              IconButton(
                icon: Icon(Icons.person),
                onPressed: () {
                  _onItemTapped(3);
                },
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Handle the center button tap
        },
        tooltip: 'Center Button',
        child: Icon(Icons.add),
        elevation: 2.0,
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
      // Handle item tap
      // You can navigate to different pages based on the index
    });
  }
}