import 'package:convex_bottom_bar/convex_bottom_bar.dart';
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
            buildHeader(),
            buildContent(),
            buildListContent()


          ],
        ),
      ),
      bottomNavigationBar: ConvexAppBar(
        items: [
          TabItem(icon: Icons.home, title: 'Home'),
          TabItem(icon: Icons.search, title: 'Search'),
          // TabItem(icon: Icons.search, title: 'Search'),
          // TabItem(
          //   icon: Container(),
          //   title: 'Profile',
          // ),
          TabItem(
              icon: Image.asset("assets/video/badge1.png"), title: 'Search'),
        ],
        activeColor: Colors.red,
        onTap: (index) {
          setState(() {
            // _currentIndex = index;
          });
        },
      ),
    );
  }

  Widget buildListContent() {
    return Container(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5, // Adjust the itemCount as needed
        itemBuilder: (context, index) {
          return Container(
            width: 94,
            height: 88,
            margin: const EdgeInsets.only(right: 8),
            padding: const EdgeInsets.only(
              top: 12,
              left: 12,
              right: 12,
              bottom: 8,
            ),
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                side: BorderSide(width: 1.20, color: Color(0xFF613EEA)),
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: SizedBox(
                    height: 48,
                    width: 48,
                    child: Image.asset(
                      "assets/nightmoodscreen/bathroom.png",
                    ),
                  ),
                ),
                Text(
                  'Bed room',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF404040),
                    fontSize: 12,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    height: 0.19,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }


  Widget buildHeader() {
    return Container(
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
                child: Icon(
                  Icons.add,
                  color: Colors.blueAccent,
                  size: 30,
                )),
          ),
        ],
      ),
    );
  }

  Widget buildContent() {
    return Container(
      width: 335,
      height: 88,
      decoration: ShapeDecoration(
        color: Colors.red,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Row(
        children: [
          SizedBox(
              height: 48,
              width: 48,
              child:
              Image.asset("assets/nightmoodscreen/solar_energy.png")),
          SizedBox(
            width: 63,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '120 kwh',
                  style: TextStyle(
                    color: Color(0xFF0C0C0C),
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    height: 1.5,
                  ),
                ),
                Text(
                  'Total usage',
                  style: TextStyle(
                    color: Color(0xFFB4B4B4),
                    fontSize: 11,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                ),

              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: VerticalDivider(
              width: 1.0,
              thickness: 1.0,
              color: Colors.grey,
            ),
          ),
          SizedBox(
              height: 48,
              width: 48,
              child:
              Image.asset("assets/nightmoodscreen/wallet.png")),
          SizedBox(
            width: 63,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '\$90.24',
                  style: TextStyle(
                    color: Color(0xFF0C0C0C),
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    height: 1.5,
                  ),
                ),
                Text(
                  'Total Cost',
                  style: TextStyle(
                    color: Color(0xFFB4B4B4),
                    fontSize: 11,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                ),

              ],
            ),
          ),

        ],
      ),
    );
  }
}
