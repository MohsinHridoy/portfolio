import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled1/screens/productdetails/productsDetails.dart';

class HomeClock extends StatefulWidget {
  const HomeClock({Key? key}) : super(key: key);

  @override
  State<HomeClock> createState() => _HomeClockState();
}

class _HomeClockState extends State<HomeClock>
    with SingleTickerProviderStateMixin {
  int selectedIndex = 0;
  int _selectedIndex = 0;
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 300),
    );

    _animation = Tween<double>(begin: 0, end: 1).animate(_animationController);
  }

  List<List<String>> gridItems = [
    ['Grid Item 0-0', 'Grid Item 0-1', 'Grid Item 0-2'],
    ['Grid Item 1-0', 'Grid Item 1-1', 'Grid Item 1-2'],
    ['Grid Item 2-0', 'Grid Item 2-1', 'Grid Item 2-2'],
    ['Grid Item 3-0', 'Grid Item 3-1', 'Grid Item 3-2'],
    ['Grid Item 4-0', 'Grid Item 4-1', 'Grid Item 4-2'],
  ];
  List<String> listItems = [
    "Popular",
    "Classic",
    "Smart watch",
    "Men",
    "Men",
    "Men",
  ];

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.white, // Set the desired status bar color
    ));
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 192,
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              shadows: [
                BoxShadow(
                  color: Color(0x1C23262D),
                  blurRadius: 10,
                  offset: Offset(0, 1),
                  spreadRadius: 0,
                )
              ],
            ),
            child: GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProductDetails()),
                );
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 200,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () {

                            },
                            child: SizedBox(
                              width: 218,
                              child: Text(
                                'Let’s find a watch for you',
                                overflow: TextOverflow.ellipsis,
                                // Handle overflow with ellipsis
                                maxLines: 2,
                                // Set the maximum number of lines
                                style: TextStyle(
                                  color: Color(0xFF2F2F2F),
                                  fontSize: 24,
                                  fontFamily: 'Montserrat Alternates',
                                  fontWeight: FontWeight.w600,
                                  height: 1.2,
                                  // Adjust the line height as needed
                                  letterSpacing: 0.2,
                                ),
                              ),
                            ),
                          ),
                          Stack(
                            children: [
                              Positioned(
                                top: 25,
                                child: GestureDetector(
                                  onTap: (){
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => ProductDetails()),
                                    );
                                  },
                                  child: Container(
                                    height: 100,
                                    width: 35,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage("assets/images/home.png"),
                                        // Replace with the actual image path
                                        fit: BoxFit
                                            .cover, // Adjust the fit as needed
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 28.0),
                                child: Container(
                                  height: 100,
                                  width: 70,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image:
                                          AssetImage("assets/images/leg.png"),
                                      // Replace with the actual image path
                                      fit: BoxFit
                                          .cover, // Adjust the fit as needed
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width - 40,
                      height: 52,
                      padding: const EdgeInsets.only(left: 0, right: 0),
                      decoration: ShapeDecoration(
                        color: Color(0xFFF2F2F2),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 1,
                            strokeAlign: BorderSide.strokeAlignOutside,
                            color: Color(0xFFEFEFEF),
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.search,
                            color: Colors.black38,
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Text(
                              'Let’s find a watch',
                              style: TextStyle(
                                color: Color(0xFF9CA4AB),
                                fontSize: 16,
                                fontFamily: 'Montserrat Alternates',
                                fontWeight: FontWeight.w500,
                                height: 0.09,
                                letterSpacing: 0.08,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 150,
                          ),
                          Container(
                              width: 28,
                              height: 28,
                              padding: const EdgeInsets.all(5),
                              clipBehavior: Clip.antiAlias,
                              decoration: ShapeDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment(1.00, 0.05),
                                  end: Alignment(-1, -0.05),
                                  colors: [Color(0xFF25A8B1), Color(0xFF27889D)],
                                ),
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                    width: 1,
                                    strokeAlign: BorderSide.strokeAlignOutside,
                                  ),
                                  borderRadius: BorderRadius.circular(7),
                                ),
                              ),
                              child: Container(
                                width: 18,
                                height: 18,
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                ),
                                child: ColorFiltered(
                                  colorFilter: ColorFilter.mode(
                                    Colors.white,
                                    BlendMode.saturation,
                                  ),
                                  child: Image.asset(
                                    'assets/icons/filter.png',
                                    // Replace with your asset image path
                                    width: 18,
                                    height: 18,
                                    fit: BoxFit
                                        .cover, // Adjust the fit based on your requirement
                                  ),
                                ),
                              ))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: 50,
            color: Colors.white,
            child: ListView.builder(
              itemCount: listItems.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    if (index != selectedIndex) {
                      setState(() {
                        selectedIndex = index;
                      });

                      _animationController.reset();
                      _animationController.forward();
                    }
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          listItems[index],
                          style: TextStyle(
                            color: index == selectedIndex
                                ? Color(0xFF259DA5)
                                : Colors.black,
                          ),
                        ),
                        SizedBox(height: 4.0),
                        if (index == selectedIndex)
                          AnimatedBuilder(
                            animation: _animation,
                            builder: (context, child) {
                              return Row(
                                children: [
                                  Container(
                                    width: 15,
                                    height: 3,
                                    decoration: ShapeDecoration(
                                      gradient: LinearGradient(
                                        begin: Alignment(1.00, -0.05),
                                        end: Alignment(-1, 0.05),
                                        colors: [
                                          Color(0xFF259DA5),
                                          Color(0xFF27889D)
                                        ],
                                      ),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(14),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 5),
                                  Container(
                                    width: 5,
                                    height: 3,
                                    decoration: ShapeDecoration(
                                      gradient: LinearGradient(
                                        begin: Alignment(1.00, -0.05),
                                        end: Alignment(-1, 0.05),
                                        colors: [
                                          Color(0xFF259DA5),
                                          Color(0xFF27889D)
                                        ],
                                      ),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(14),
                                      ),
                                    ),
                                    transform: Matrix4.translationValues(
                                        5.0 * _animation.value, 0.0, 0.0),
                                  ),
                                  SizedBox(width: 5),
                                  Container(
                                    width: 5,
                                    height: 3,
                                    decoration: ShapeDecoration(
                                      gradient: LinearGradient(
                                        begin: Alignment(1.00, -0.05),
                                        end: Alignment(-1, 0.05),
                                        colors: [
                                          Color(0xFF259DA5),
                                          Color(0xFF27889D)
                                        ],
                                      ),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(14),
                                      ),
                                    ),
                                    transform: Matrix4.translationValues(
                                        10.0 * _animation.value, 0.0, 0.0),
                                  ),
                                ],
                              );
                            },
                          ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.grey[200],
              child: Center(
                child: selectedIndexContainer(),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        selectedIndex: _selectedIndex,
        onItemSelected: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }

  Widget selectedIndexContainer() {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8,
          mainAxisSpacing: 12,
          childAspectRatio: 0.9,
        ),
        itemCount: 9,
        itemBuilder: (context, index) {
          return Container(
            width: 157,
            height: 237,
            padding: const EdgeInsets.only(
              top: 10,
              left: 10,
              right: 10,
              bottom: 20,
            ),
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              shadows: [
                BoxShadow(
                  color: Color(0x01000000),
                  blurRadius: 3.15,
                  offset: Offset(0, 1.85),
                  spreadRadius: 0,
                ),
                BoxShadow(
                  color: Color(0x02000000),
                  blurRadius: 6.52,
                  offset: Offset(0, 8.15),
                  spreadRadius: 0,
                ),
                BoxShadow(
                  color: Color(0x02000000),
                  blurRadius: 13,
                  offset: Offset(0, 20),
                  spreadRadius: 0,
                ),
                BoxShadow(
                  color: Color(0x03000000),
                  blurRadius: 25.48,
                  offset: Offset(0, 38.52),
                  spreadRadius: 0,
                ),
                BoxShadow(
                  color: Color(0x03000000),
                  blurRadius: 46.85,
                  offset: Offset(0, 64.81),
                  spreadRadius: 0,
                ),
                BoxShadow(
                  color: Color(0x05000000),
                  blurRadius: 80,
                  offset: Offset(0, 100),
                  spreadRadius: 0,
                )
              ],
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 80,
                        height: 135.66,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/img0.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Container(
                        width: 34,
                        height: 34,
                        padding: const EdgeInsets.all(5),
                        decoration: ShapeDecoration(
                          // color: Colors.white.withOpacity(0.800000011920929),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                        ),
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.topRight,
                              child: Image.asset(
                                "assets/icons/heart.png",
                                width: 18,
                                height: 18,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Text(
                    'Moon Phase',
                    style: TextStyle(
                      color: Color(0xFF232D3B),
                      fontSize: 14,
                      fontFamily: 'Montserrat Alternates',
                      fontWeight: FontWeight.w600,
                      height: 0.11,
                      letterSpacing: 0.70,
                    ),
                  ),
                  // SizedBox(height: 5,),
                  Text(
                    'Casio',
                    style: TextStyle(
                      color: Color(0xFF969591),
                      fontSize: 12,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),

                  Text(
                    '\$14500',
                    style: TextStyle(
                      color: Color(0xFF333333),
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class CustomBottomNavigationBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemSelected;

  const CustomBottomNavigationBar({
    required this.selectedIndex,
    required this.onItemSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 8,
            offset: Offset(0, -2),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildNavItem(0, 'assets/icons/home.png'),
          _buildNavItem(1, 'assets/icons/category.png'),
          _buildNavItem(2, 'assets/icons/heart.png'),
          _buildNavItem(3, 'assets/icons/profile.png'),
        ],
      ),
    );
  }
  Widget _buildNavItem(int index, String imgPath) {
    return GestureDetector(
      onTap: () {
        onItemSelected(index);
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 46,
              height: 46,
              decoration: ShapeDecoration(
                color: index == selectedIndex
                    ? Color(0xFFE3FDFF)
                    : Colors.transparent,
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 1, color: Color(0xFFDFF9FB)),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  width: 15,
                  height: 15,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    color: Colors.red, // Set your desired background color
                    borderRadius: BorderRadius.circular(10), // Adjust border radius as needed
                    image: DecorationImage(
                      image: AssetImage(imgPath),
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 4),
          ],
        ),
      ),
    );
  }

  // Widget _buildNavItem(int index, String imgPath) {
  //   return GestureDetector(
  //     onTap: () => onItemSelected(index),
  //     child: Container(
  //       padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
  //       decoration: BoxDecoration(
  //         borderRadius: BorderRadius.circular(8),
  //       ),
  //       child: Column(
  //         mainAxisSize: MainAxisSize.min,
  //         children: [
  //           Container(
  //             width: 46,
  //             height: 46,
  //             decoration: ShapeDecoration(
  //               color: index == selectedIndex
  //                   ? Color(0xFFE3FDFF)
  //                   : Colors.transparent,
  //               shape: RoundedRectangleBorder(
  //                 side: BorderSide(width: 1, color: Color(0xFFDFF9FB)),
  //                 borderRadius: BorderRadius.circular(10),
  //               ),
  //             ),
  //             child: Padding(
  //               padding: const EdgeInsets.all(10.0),
  //               child: Container(
  //                 width: 15,
  //                 height: 15,
  //                 clipBehavior: Clip.antiAlias,
  //                 decoration: BoxDecoration(
  //                   color: Colors.black.withOpacity(0),
  //                   image: DecorationImage(
  //                     image: AssetImage(imgPath),
  //                     // Replace with your asset image path
  //                     fit: BoxFit
  //                         .fitHeight, // Adjust the fit based on your requirement
  //                   ),
  //                 ),
  //               ),
  //             ),
  //           ),
  //           SizedBox(height: 4),
  //         ],
  //       ),
  //     ),
  //   );
  // }
}
