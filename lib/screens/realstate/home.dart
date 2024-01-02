import 'package:flutter/material.dart';

import '../../model/realstate/FeatureItemData.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // Sample list of texts for each container
  List<String> texts = ['Text 1', 'Text 2', 'Text 3'];
  final List<String> videoImages = [
    "assets/realstate/home/apartmnt1.png",
    // Replace with your actual image paths
    "assets/realstate/home/apartmnt2.png",
    // Replace with your actual image paths
    "assets/realstate/home/apartmnt1.png",
    // Replace with your actual image paths
    // "assets/video/video_image_.jpg",
    // Add more image paths as needed
  ];
  List<FeatureItemData> itemList = [
    FeatureItemData(
      imageUrl: "assets/realstate/home/apartmnt3.png",
      category: "Apartment",
    ),
    FeatureItemData(
      imageUrl: "assets/realstate/home/apartmnt4.png",
      category: "Home",
    ),
    FeatureItemData(
      imageUrl: "assets/realstate/home/apartmnt1.png",
      category: "Apartment",
    ),
    // Add more items as needed
  ];
  // Variables to track the position of the draggable container
  double x = 30.0;
  double y = 30.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          appBar(),
          searchBar(),
          caourselItem(),
          FeatureTitle(),
          featureItem(itemList)
        ],
      ),
    );
  }

  Widget caourselItem() {
    return Container(
      height: MediaQuery.of(context).size.height / 1.8,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: [
          Positioned(
            left: 70,
            top: 90,
            child: Container(
              width: 285,
              height: MediaQuery.of(context).size.height / 2.8,
              child: Stack(
                children: [
                  // Image
                  Container(
                    width: 285,
                    height: MediaQuery.of(context).size.height / 2.8,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(videoImages[1]),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(23),
                    ),
                  ),
                  // Dark overlay
                  Positioned(
                    bottom: 0,
                    child: Container(
                      width: 285,
                      height: 92,
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.8),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(23),
                          bottomRight: Radius.circular(23),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 50,
            top: 60,
            child: Container(
              // color: Colors.red,
              width: 285,
              height: MediaQuery.of(context).size.height / 2.4,
              child: Stack(
                children: [
                  // Image
                  Container(
                    width: 285,
                    height: MediaQuery.of(context).size.height / 2.7,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(videoImages[0]),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(23),
                    ),
                  ),
                  // Dark overlay
                  Positioned(
                    bottom: 0,
                    child: Container(
                      width: 285,
                      height: 92,
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.8),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(23),
                          bottomRight: Radius.circular(23),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 30,
            top: 30,
            child: Container(
              width: 285,
              height: MediaQuery.of(context).size.height / 2.2,
              child: Stack(
                children: [
                  // Image
                  Container(
                    width: 285,
                    height: MediaQuery.of(context).size.height / 2.2,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(videoImages[2]),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(23),
                    ),
                  ),
                  // Dark overlay
                  Positioned(
                    bottom: 0,
                    child: Container(
                      width: 285,
                      height: 92,
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.8),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(23),
                          bottomRight: Radius.circular(23),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: x,
            top: y,
            child: GestureDetector(
              onPanUpdate: (details) {
                if (details.delta.dx < 0) {
                  // Only allow dragging to the right (positive x-direction)
                  setState(() {
                    x += details.delta.dx - 6;
                    print(x);
                    y += details.delta.dy;
                  });
                }
              },
              onPanEnd: (details) {
                // Reset position if x is greater than 200
                if (x < -16) {
                  setState(() {
                    x = 30;
                    y = 30;
                    // Rotate values in the texts list
                    String temp = videoImages[0];
                    videoImages[0] = videoImages[1];
                    videoImages[1] = videoImages[2];
                    videoImages[2] = temp;
                  });
                }
              },
              child: Container(
                width: 285,
                height: MediaQuery.of(context).size.height / 2.1,
                child: Stack(
                  children: [
                    // Image

                    Container(
                      width: 285,
                      height: MediaQuery.of(context).size.height / 2.1,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(videoImages[2]),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(23),
                      ),
                    ),
                    // Dark overlay
                    Opacity(
                      opacity: 0.44,
                      child: Container(
                        width: 36,
                        height: 36,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: OvalBorder(),
                        ),
                      ),

                    ),
                    Image.asset("assets/realstate/home/book_mark.png",width: 24,height: 24,color: Colors.white,),

                    Positioned(
                      bottom: 0,
                      child: Container(
                        width: 285,
                        height: 92,
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.8),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(23),
                            bottomRight: Radius.circular(23),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget FeatureTitle() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Featured Estates',
          style: TextStyle(
            color: Color(0xFF242B5C),
            fontSize: 18,
            fontFamily: 'Manrope',
            fontWeight: FontWeight.w700,
            height: 0,
            letterSpacing: 0.54,
          ),
        ),
        Text(
          'view all',
          textAlign: TextAlign.right,
          style: TextStyle(
            color: Color(0xFF3577FF),
            fontSize: 14,
            fontFamily: 'Manrope',
            fontWeight: FontWeight.w600,
            height: 0.05,
            letterSpacing: 0.42,
          ),
        )
      ],
    );
  }

  Widget featureItem(List<FeatureItemData> itemList) {
    return Padding(
      padding: const EdgeInsets.only(left:18.0,right:8.0),
      child: Container(
        width: 500,
        // width: MediaQuery.of(context).size.width * .6,
        height: MediaQuery.of(context).size.height / 5.2,
        child: ListView.builder(
          itemCount: itemList.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            FeatureItemData currentItem = itemList[index];

            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: MediaQuery.of(context).size.width * .6,
                height: MediaQuery.of(context).size.height / 5.2,
                padding: const EdgeInsets.only(
                  top: 12,
                  left: 12,
                  right: 18,
                  bottom: 12,
                ),
                clipBehavior: Clip.antiAlias,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(13),
                  ),
                  shadows: [
                    BoxShadow(
                      color: Color(0x260B1A37),
                      blurRadius: 25,
                      offset: Offset(2, 6),
                      spreadRadius: -4,
                    )
                  ],
                ),
                child: Row(
                  children: [
                    Container(
                      width: 124,
                      height: 132,
                      decoration: ShapeDecoration(
                        image: DecorationImage(
                          // image: NetworkImage(currentItem.imageUrl),
                          image: AssetImage(currentItem.imageUrl),
                          fit: BoxFit.cover,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(9),
                        ),
                      ),
                    ),
                    Container(
                      width: 52,
                      height: 16,
                      padding: const EdgeInsets.only(top: 2, left: 4, right: 4, bottom: 3),
                      decoration: ShapeDecoration(
                        color: Color(0xFFECF2FF),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(2),
                        ),
                      ),
                      child: Text(
                        currentItem.category,
                        style: TextStyle(
                          color: Color(0xFF246BFD),
                          fontSize: 8,
                          fontFamily: 'Manrope',
                          fontWeight: FontWeight.w600,
                          height: 0,
                          letterSpacing: 0.24,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget searchBar() {
    return Container(
        width: 327,
        height: 52,
        padding: const EdgeInsets.only(left: 16, right: 20),
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
      child: Row(
        children: [
          Image.asset("assets/realstate/home/search_icon.png",height: 20,width:20,),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Search property',
                enabledBorder: InputBorder.none,
                labelStyle: TextStyle(
                  color: Color(0xFF94A3B8),
                  fontSize: 15,

                  fontFamily: 'Manrope',
                  fontWeight: FontWeight.w400,
                  height: 0,
                  letterSpacing: 0.45,
                ),
                // You can add other InputDecoration properties as needed
              ),
              // Other properties of TextField
            ),
          ),
          Image.asset("assets/realstate/home/recorder_icon.png",height: 20,width:20,),

        ],
      ),


    );
  }

  Widget appBar() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 90,
      decoration: BoxDecoration(
        color: Colors.white,
        // color: Colors.white.withOpacity(0.9700000286102295),
      ),
      child: Row(
        children: [
          Image.asset("assets/realstate/home/grp_icon.png",width: 24,height:24,),
          Text(
            'Washington, New York',
            style: TextStyle(
              color: Color(0xFF0C243E),
              fontSize: 14,
              fontFamily: 'Manrope',
              fontWeight: FontWeight.w700,
              height: 0.11,
            ),
          ),
          Image.asset("assets/realstate/home/drop_down.png",width: 24,height:24,),
          Image.asset("assets/realstate/home/alert.png",width: 24,height:24,),

        ],
      ),
    );
  }
}
