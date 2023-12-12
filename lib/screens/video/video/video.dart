import 'package:flutter/material.dart';

class Video extends StatefulWidget {
  @override
  State<Video> createState() => _VideoState();
}

class _VideoState extends State<Video> {
  bool isVisible=false;
  final List<String> videoImages = [
    "assets/video/video_image.png", // Replace with your actual image paths
    "assets/video/video_image2.png",
    "assets/video/video_image2.png",
    // "assets/video/video_image_.jpg",
    // Add more image paths as needed
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color:Color(0xFFF5F5F9),
        child: Stack(
          children: [
            // Positioned(
            //   top:0,
            //   child: Container(
            //     height: 150,
            //     decoration: BoxDecoration(
            //       gradient: LinearGradient(
            //         begin: Alignment.topLeft,
            //         end: Alignment.bottomRight,
            //         colors: [Colors.blue, Colors.purple],
            //       ),
            //       borderRadius: BorderRadius.only(
            //         bottomLeft: Radius.circular(35),
            //         bottomRight: Radius.circular(35),
            //       ),
            //     ),
            //     child: Center(
            //       child: Stack(
            //         children: [
            //           Positioned(
            //             top: 5,
            //             child: Container(
            //               child: Column(
            //                 crossAxisAlignment: CrossAxisAlignment.start,
            //                 children: [
            //                   SizedBox(
            //                     height: 50,
            //                   ),
            //                   Text(
            //                     'Easy & Simple',
            //                     style: TextStyle(
            //                       color: Color(0xFFD6E4FF),
            //                       fontSize: 14,
            //                       fontFamily: 'Poppins',
            //                       fontWeight: FontWeight.w400,
            //                       height: 0.14,
            //                     ),
            //                   ),
            //                   SizedBox(
            //                     height: 20,
            //                   ),
            //                   Text(
            //                     'Earn Points in a Points',
            //                     style: TextStyle(
            //                       color: Colors.white,
            //                       fontSize: 20,
            //                       fontFamily: 'Poppins',
            //                       fontWeight: FontWeight.w600,
            //                       height: 0.07,
            //                     ),
            //                   )
            //                 ],
            //               ),
            //             ),
            //           ),
            //           // Container with Stars
            //           Positioned(
            //             top: 10,
            //             child: Container(
            //               height: 100,
            //               width: MediaQuery.of(context).size.width,
            //               // Adjust the width to cover the entire screen
            //               padding: EdgeInsets.all(8),
            //               decoration: BoxDecoration(
            //                 color: Colors
            //                     .transparent, // Make the container transparent
            //               ),
            //               child: _buildStars(80,
            //                   20), // Adjust the number of stars and columns as needed
            //             ),
            //           ),
            //         ],
            //       ),
            //     ),
            //   ),
            // ),
          Positioned(
          top: 160,
          right: 25,
          left: 25,
          child: Container(
            width: 335,
            height: 174,
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            child: Row(
              children: [
                Container(
                  height: 170,
                  width: 200,

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start, // added this line
                    children: [
                      SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: SizedBox(
                          width: 162,
                          height: 90,

                          child: Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Watch video \nand ',
                                  style: TextStyle(
                                    color: Color(0xFF1D222D),
                                    fontSize: 20,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w600,
                                    height: 1.2, // Adjust the height value for proper spacing
                                  ),
                                ),
                                TextSpan(
                                  text: 'earn coins',
                                  style: TextStyle(
                                    color: Color(0xFF3A86FF),
                                    fontSize: 20,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w600,
                                    // height: 0.09

                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap:(){
                            print("ccccccccccccccccccccccccc");
                            setState(() {
                              isVisible=!isVisible;

                            });
                          },
                          child: Container(
                            width: 134,
                            height: 42,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 14, vertical: 7),
                            clipBehavior: Clip.antiAlias,
                            decoration: ShapeDecoration(
                              color: Color(0xFF3A86FF),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6),
                              ),
                              shadows: [
                                BoxShadow(
                                  color: Color(0x473985FF),
                                  blurRadius: 12,
                                  offset: Offset(0, 8),
                                  spreadRadius: -4,
                                ),
                              ],
                            ),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.play_arrow,
                                  color: Colors.white,
                                ),
                                Text(
                                  'Watch video',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                    height: 0.14,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 174,
                  width: 135,
                  child: Stack(
                    children: [

                      Positioned(
                        top:40,
                        left: 40,
                        child: Container(
                          width: 159,
                          height: 159,
                          decoration: ShapeDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(-0.83, 0.56),
                              end: Alignment(0.83, -0.56),
                              colors: [Color(0xFFFFBE0B), Color(0x00FFBE0B)],
                            ),
                            shape: OvalBorder(),
                          ),
                        ),
                      ),
                      Positioned(
                        top:70,
                        left:30,
                        child: Transform(
                          transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(0.30),
                          child: Container(
                            width: 25.77,
                            height: 24.74,
                            child: Image.asset("assets/video/start_icon.png"),
                          ),
                        ),
                      ),
                      Positioned(
                        top:120,
                        left:35,
                        child: Transform(
                          transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(0.30),
                          child: Container(
                            width: 25.77,
                            height: 24.74,
                            child: Image.asset("assets/video/start_icon.png"),
                          ),
                        ),
                      ),
                      Positioned(
                        top:60,
                        left:75,
                        child: Transform(
                          transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(0.30),
                          child: Container(
                            width: 25.77,
                            height: 24.74,
                            child: Image.asset("assets/video/round_plate.png"),
                          ),
                        ),
                      ),
                      Positioned(
                          top:135,
                          left:65,
                        child: Transform(
                          transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(-0.71),
                          child: Container(
                            width: 25.77,
                            height: 24.74,
                            child: Image.asset("assets/video/spinning_setting.png"),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 10,
                        left: 10,
                        child: Transform(
                          transform: Matrix4.identity()
                            ..translate(0.0, 0.0)
                            ..rotateZ(-0.20),
                          child: Container(
                            width: 113.24,
                            height: 88.08,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/video/video_camera_icon.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              ],
            ),
          ),
        ),

            Positioned(
              bottom: 0,
              left: 25,
              right: 20,
              child: Container(
                height: 350,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Buy Coins',
                      style: TextStyle(
                        color: Color(0xFF3B414C),
                        fontSize: 18,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        height: 0.09,
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      width: 335,
                      height: 104,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        shadows: [
                          BoxShadow(
                            color: Color(0x30354895),
                            blurRadius: 15,
                            offset: Offset(0, 6),
                            spreadRadius: -5,
                          )
                        ],
                      ),
                      child: Row(
                        children: [
                          Container(
                            width: 56,
                            height: 56,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(),
                            child: Image.asset("assets/video/badge1.png")
                          ),
                          SizedBox(
                            width: 145,
                            child: Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Buy ',
                                    style: TextStyle(
                                      color: Color(0xFF3B414C),
                                      fontSize: 18,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600,
                                      height: 0.10,
                                    ),
                                  ),
                                  TextSpan(
                                    text: '200 ',
                                    style: TextStyle(
                                      color: Color(0xFFCF7949),
                                      fontSize: 18,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600,
                                      height: 0.8,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'Coins\n',
                                    style: TextStyle(
                                      color: Color(0xFF3B414C),
                                      fontSize: 18,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600,
                                      height: 1,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'in just \$5',
                                    style: TextStyle(
                                      color: Color(0xFF777D88),
                                      fontSize: 14,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                      height: 2,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 5),

                    Container(
                      width: 335,
                      height: 104,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        shadows: [
                          BoxShadow(
                            color: Color(0x30354895),
                            blurRadius: 15,
                            offset: Offset(0, 6),
                            spreadRadius: -5,
                          )
                        ],
                      ),
                      child: Row(
                        children: [
                          Container(
                              width: 56,
                              height: 56,
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(),
                              child: Image.asset("assets/video/badge2.png")
                          ),
                          SizedBox(
                            width: 145,
                            child: Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Buy ',
                                    style: TextStyle(
                                      color: Color(0xFF3B414C),
                                      fontSize: 18,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600,
                                      height: 0.10,
                                    ),
                                  ),
                                  TextSpan(
                                    text: '200 ',
                                    style: TextStyle(
                                      color: Color(0xFFCF7949),
                                      fontSize: 18,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600,
                                      height: 0.8,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'Coins\n',
                                    style: TextStyle(
                                      color: Color(0xFF3B414C),
                                      fontSize: 18,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600,
                                      height: 1,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'in just \$5',
                                    style: TextStyle(
                                      color: Color(0xFF777D88),
                                      fontSize: 14,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                      height: 2,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 5),

                    Container(
                      width: 335,
                      height: 104,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        shadows: [
                          BoxShadow(
                            color: Color(0x30354895),
                            blurRadius: 15,
                            offset: Offset(0, 6),
                            spreadRadius: -5,
                          )
                        ],
                      ),
                      child: Row(
                        children: [
                          Container(
                              width: 56,
                              height: 56,
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(),
                              child: Image.asset("assets/video/badge3.png")
                          ),
                          SizedBox(
                            width: 145,
                            child: Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Buy ',
                                    style: TextStyle(
                                      color: Color(0xFF3B414C),
                                      fontSize: 18,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600,
                                      height: 0.10,
                                    ),
                                  ),
                                  TextSpan(
                                    text: '200 ',
                                    style: TextStyle(
                                      color: Color(0xFFCF7949),
                                      fontSize: 18,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600,
                                      height: 0.8,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'Coins\n',
                                    style: TextStyle(
                                      color: Color(0xFF3B414C),
                                      fontSize: 18,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600,
                                      height: 1,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'in just \$5',
                                    style: TextStyle(
                                      color: Color(0xFF777D88),
                                      fontSize: 14,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                      height: 2,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),


                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              child: Visibility(
                visible: isVisible,
                child: Container(
                    width: 375,
                    height: 517,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        ),
                      ),
                    ),
                    child: Column(
                      children: [
                        Text("Watch & Earn",style: TextStyle(fontSize: 20),),
                        Container(
                          width: 327,
                          height: 205,
                          decoration: ShapeDecoration(
                            color: Colors.black.withOpacity(0.07000000029802322),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(14),
                            ),
                          ),
                          child: Stack(
                            children:[

                              Container(
                                child: Image.asset("assets/video/video_image.png") ,
                              ),
                              Center(
                                child: Opacity(
                                  opacity: 0.95,
                                  child: Container(
                                    width: 68,
                                    height: 68,
                                    decoration: ShapeDecoration(
                                      color: Colors.white.withOpacity(0.6),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(42),
                                      ),
                                    ),
                                    child: Center(
                                      child: Container(
                                          width: 39,
                                          height: 39,
                                          child: Image.asset("assets/video/play_button.png")),
                                    ),
                                  ),

                                ),
                              )
                            ]
                          ),
                        ),
                        SizedBox(height:10,),
                        Container(
                          height: 270,
                          width: 500,
                          // color:Colors.red,

                          child: Column(
                            children: [
                              Text(
                                'Earn free coins',
                                style: TextStyle(
                                  color: Color(0xFF3B414C),
                                  fontSize: 18,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                  height: 0.09,
                                ),
                              ),
                              Container(
                                height: 200,
                                width: 500,
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: videoImages.length,
                                  itemBuilder: (context, index) {
                                    return Padding(
                                      padding: const EdgeInsets.all(1.0),
                                      child: Center(
                                        child: Container(
                                          width: 88,
                                          height: 106,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage(videoImages[index]),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),


                            ],
                          ),
                        )
                      ],
                    ),

                  ),
              ),

            )



          ],
        ),
      ),
    );
  }

  Widget _buildStars(int count, int columns) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(), // Disable bouncing effect

      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: columns,
        crossAxisSpacing: 0.0,
        mainAxisSpacing: 0.0,
      ),
      itemCount: count,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.all(0.0),
        child: Opacity(
          opacity: 0.3,
          child: Icon(
            Icons.star,
            color: Colors.blueAccent,
            size: 10,
          ),
        ),
      ),
    );
  }
}
