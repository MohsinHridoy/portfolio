import 'package:flutter/material.dart';

class GradientContainerWithStars extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gradient Container with Stars'),
      ),
      body: Stack(
        children: [
          // Background Gradient Container
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.blue, Colors.purple],
              ),
            ),
          ),

          // Content in the Stack
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Your Text Widget
                Text(
                  'Hello, Stack!',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),

                SizedBox(height: 16),

                // Container with Stars
                Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.transparent, // Make the container transparent
                  ),
                  child: _buildStars(200), // Adjust the number of stars as needed
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStars(int count) {
    return Wrap(
      children: List.generate(
        count,
            (index) => Padding(
          padding: const EdgeInsets.all(4.0),
          child: Opacity(
            opacity: 0.2,
            child: Icon(
              Icons.star,
              color: Colors.blueAccent,
              size: 20,
            ),
          ),
        ),
      ),
    );
  }
}
