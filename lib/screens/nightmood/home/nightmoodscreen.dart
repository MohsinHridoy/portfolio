import 'package:flutter/material.dart';

class NMScreen extends StatefulWidget {
  const NMScreen({super.key});

  @override
  State<NMScreen> createState() => _NMScreenState();
}

class _NMScreenState extends State<NMScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              height: 150,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Hi Naimur',
                        style: TextStyle(
                          color: Color(0xFF0C0C0C),
                          fontSize: 20,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          height: 0.07,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        '\nWelcome Back to Home!',
                        style: TextStyle(
                          color: Color(0xFF808080),
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          height: 0.14,
                        ),
                      )
                    ],
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    // padding: const EdgeInsets.all(12),
                    decoration: ShapeDecoration(
                      color: Colors.red,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                    ),
                    child: Center(
                        child: Icon(Icons.add, color: Colors.blueAccent,size: 30,)
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 335,
              height: 88,
              decoration: ShapeDecoration(
                color: Colors.red,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MyApp11 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Dark Mode Example',
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.system,
      // Use system theme preference by default

      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  ThemeMode currentThemeMode = ThemeMode.system;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dark Mode Example'),
      ),
      body: Center(
        child: Text('Hello, World!'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            currentThemeMode = currentThemeMode == ThemeMode.light
                ? ThemeMode.dark
                : ThemeMode.light;
          });

          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text(
                'Switching to ${currentThemeMode.toString().split('.').last} mode'),
          ));

          ThemeModeSetter().setThemeMode(currentThemeMode);
        },
        child: Icon(Icons.brightness_4),
      ),
    );
  }
}

class ThemeModeSetter {
  setThemeMode(ThemeMode themeMode) async {
    // Implement your logic to store the theme mode preference
    // For example, you can use shared preferences or any other storage mechanism
  }
}


