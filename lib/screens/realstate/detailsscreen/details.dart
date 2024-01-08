import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:untitled1/model/realstate/details/review.dart';

import '../../../model/realstate/details/details.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;
  bool isExpanded = false;

  List<String> gallaryImage = [
    "assets/realstate/home/gallery_image1.png",
    "assets/realstate/home/gallery_image2.png",
    "assets/realstate/home/gallery_image3.png",
    "assets/realstate/home/gallery_image1.png",
    "assets/realstate/home/gallery_image1.png",
    "assets/realstate/home/gallery_image1.png",
    "assets/realstate/home/gallery_image1.png",
  ];
  List<DetailsItemData> itemList = [
    DetailsItemData(
      imageUrl: "assets/realstate/home/apartmnt2.png",
      category: "Apartment",
    ),
    DetailsItemData(
      imageUrl: "assets/realstate/home/apartmnt4.png",
      category: "Home",
    ),
    DetailsItemData(
      imageUrl: "assets/realstate/home/apartmnt1.png",
      category: "Apartment",
    ),
    // Add more items as needed
  ];
  List<Review> reviews = [
    Review(
      rating: 4.2,
      date: '2 days ago',
      comment:
          'I recently moved here, and it has been an incredible experience!',
      authorName: 'Ricardo Black',
      authorRole: 'Designer',
    ),
    Review(
      rating: 4.2,
      date: '2 days ago',
      comment:
          'I recently moved here, and it has been an incredible experience!',
      authorName: 'Ricardo Black',
      authorRole: 'Designer',
    ),
    Review(
      rating: 4.2,
      date: '2 days ago',
      comment:
          'I recently moved here, and it has been an incredible experience!',
      authorName: 'Ricardo Black',
      authorRole: 'Designer',
    ),
    Review(
      rating: 4.2,
      date: '2 days ago',
      comment:
          'I recently moved here, and it has been an incredible experience!',
      authorName: 'Ricardo Black',
      authorRole: 'Designer',
    ),
    // Add more reviews as needed
  ];

  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            sliderItem(),
            galleryItem(),
            propertyDetails(),
            Container(
              child: Column(
                children: [
                  SizedBox(
                    width: 327,
                    child: Text(
                      'Location',
                      style: TextStyle(
                        color: Color(0xFF242B5C),
                        fontSize: 18,
                        fontFamily: 'Manrope',
                        fontWeight: FontWeight.w700,
                        height: 0,
                        letterSpacing: 0.54,
                      ),
                    ),
                  ),
                  Text(
                    '1328 Market St, Tacoma, WA 98402',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: 'Manrope',
                      fontWeight: FontWeight.w500,
                      height: 0,
                      letterSpacing: 0.42,
                    ),
                  ),
                  Container(
                    width: 342,
                    height: 196,
                    clipBehavior: Clip.antiAlias,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 3, color: Colors.white),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      shadows: [
                        BoxShadow(
                          color: Color(0x260B1A37),
                          blurRadius: 22,
                          offset: Offset(2, 4),
                          spreadRadius: 0,
                        )
                      ],
                    ),
                    child: GoogleMap(
                      mapType: MapType.hybrid,
                      initialCameraPosition: _kGooglePlex,
                      onMapCreated: (GoogleMapController controller) {
                        _controller.complete(controller);
                      },
                    ),
                  )
                ],
              ),
            ),
            reviewItem(),
            bottomNavbar()
          ],
        ),
      ),
    );
  }

  Widget reviewItem() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 221,
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'Reviews',
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
                'View all',
                textAlign: TextAlign.right,
                style: TextStyle(
                  color: Color(0xFF3577FF),
                  fontSize: 14,
                  fontFamily: 'Manrope',
                  fontWeight: FontWeight.w600,
                  height: 0.11,
                  letterSpacing: 0.42,
                ),
              ),
            ],
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 200,
            child: ListView.builder(
              itemCount: reviews.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                Review review = reviews[index];

                return Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 5),
                    child: Column(
                      children: [
                        Container(
                          width: 267,
                          height: 187,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            shadows: [
                              BoxShadow(
                                color: Color(0x19212246),
                                blurRadius: 60,
                                offset: Offset(6, 16),
                                spreadRadius: 0,
                              ),
                            ],
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    '${review.rating}',
                                    style: TextStyle(
                                      color: Color(0xFF1F2128),
                                      fontSize: 14,
                                      fontFamily: 'Manrope',
                                      fontWeight: FontWeight.w400,
                                      height: 0,
                                    ),
                                  ),
                                  Text(
                                    '${review.date}',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      color: Color(0xFFA5A6A9),
                                      fontSize: 11,
                                      fontFamily: 'Manrope',
                                      fontWeight: FontWeight.w400,
                                      height: 0.15,
                                      letterSpacing: 0.01,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 235,
                                child: Text(
                                  '${review.comment}',
                                  style: TextStyle(
                                    color: Color(0xFF767676),
                                    fontSize: 13,
                                    fontFamily: 'Manrope',
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 0.01,
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  Container(
                                    width: 40,
                                    height: 40,
                                    decoration: ShapeDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                            "assets/realstate/home/man1.png"),
                                        fit: BoxFit.fill,
                                      ),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(6),
                                      ),
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        '${review.authorName}',
                                        style: TextStyle(
                                          color: Color(0xFF3B53AD),
                                          fontSize: 13,
                                          fontFamily: 'Manrope',
                                          fontWeight: FontWeight.w600,
                                          letterSpacing: 0.03,
                                        ),
                                      ),
                                      Text(
                                        '${review.authorRole}',
                                        style: TextStyle(
                                          color: Color(0xFFA5A6A9),
                                          fontSize: 11,
                                          fontFamily: 'Manrope',
                                          fontWeight: FontWeight.w400,
                                          letterSpacing: 0.01,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget bottomNavbar() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 86,
      decoration: BoxDecoration(color: Colors.white),
      child: Row(
        children: [
          Text(
            '\$124',
            style: TextStyle(
              color: Color(0xFF246BFD),
              fontSize: 22,
              fontFamily: 'Manrope',
              fontWeight: FontWeight.w700,
              height: 0.07,
              letterSpacing: 0.11,
            ),
          ),
          Container(
            width: 137,
            height: 48,
            padding: const EdgeInsets.only(
              top: 20,
              left: 21,
              right: 20,
              bottom: 20,
            ),
            clipBehavior: Clip.antiAlias,
            decoration: ShapeDecoration(
              gradient: LinearGradient(
                begin: Alignment(1.00, -0.03),
                end: Alignment(-1, 0.03),
                colors: [Color(0xFF246BFD), Color(0xFF24A1FD)],
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              shadows: [
                BoxShadow(
                  color: Color(0x59247BFD),
                  blurRadius: 15,
                  offset: Offset(0, 10),
                  spreadRadius: -7,
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget propertyDetails() {
    return SizedBox(
      width: 342,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Properties Details',
            style: TextStyle(
              color: Color(0xFF22262E),
              fontSize: 18,
              fontFamily: 'Manrope',
              fontWeight: FontWeight.w700,
              height: 0.08,
              letterSpacing: 0.20,
            ),
          ),
          Text(
            'Welcome to Villaggio Apartment Homes! Our apartments in Tacoma, WA, allow you to reside in comfort and convenience while exploring the unique and dynamic culture of the city. kfdkfjdkjfkdjfdjfkdjsfkldjllllllllllllll',
            style: TextStyle(
              color: Color(0xFF585A5F),
              fontSize: 14,
              fontFamily: 'Manrope',
              fontWeight: FontWeight.w400,
            ),
            maxLines: isExpanded ? null : 3,
            overflow: TextOverflow.ellipsis,
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                isExpanded = !isExpanded;
              });
            },
            child: Text(
              isExpanded ? 'See Less' : 'See More',
              style: TextStyle(
                color: Colors.blue, // You can customize the color
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget galleryItem() {
    return Container(
      height: 180,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            children: [
              Text(
                'Gallery',
                style: TextStyle(
                  color: Color(0xFF22262E),
                  fontSize: 18,
                  fontFamily: 'Manrope',
                  fontWeight: FontWeight.w700,
                  height: 0.08,
                  letterSpacing: 0.20,
                ),
              ),
              Text(
                'View all',
                textAlign: TextAlign.right,
                style: TextStyle(
                  color: Color(0xFF3577FF),
                  fontSize: 14,
                  fontFamily: 'Manrope',
                  fontWeight: FontWeight.w600,
                  height: 0.11,
                  letterSpacing: 0.42,
                ),
              ),
            ],
          ),
          Row(
            children: [
              galleryImage(gallaryImage[0]),
              galleryImage(gallaryImage[1]),
              Container(
                  child: Stack(children: [
                galleryImage(gallaryImage[2]),
                Positioned(
                    top: 80,
                    left: 40,
                    child: Text(
                      '+${gallaryImage.length}',
                      style: TextStyle(
                        color: Color(0xFFFBFCFC),
                        fontSize: 18,
                        fontFamily: 'Manrope',
                        fontWeight: FontWeight.w800,
                        height: 0.08,
                        letterSpacing: 0.20,
                      ),
                    ))
              ])),
            ],
          ),
        ],
      ),
    );
  }

  Widget galleryImage(String imgUrl) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 107,
        height: 141,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.00),
          image: DecorationImage(
            image: AssetImage("$imgUrl"),
            // image: NetworkImage("https://via.placeholder.com/107x141"),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  Widget sliderItem() {
    return Container(
      height: MediaQuery.of(context).size.height / 3,
      child: Stack(
        children: [
          Container(
            child: PageView.builder(
              controller: _pageController,
              onPageChanged: (int page) {
                setState(() {
                  _currentPage = page;
                });
              },
              itemCount: itemList.length,
              itemBuilder: (context, index) {
                return Container(
                  child: Stack(children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        image: DecorationImage(
                          image: AssetImage(itemList[index].imageUrl),
                          fit: BoxFit
                              .cover, // Adjust this property based on your needs
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height / 7,
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.550000011920929),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start, // You can use other values like .start, .end, .spaceBetween, etc.

                          children: [
                            Text(
                              itemList[index].category,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontFamily: 'Manrope',
                                fontWeight: FontWeight.w700,
                                height: 0.07,
                                letterSpacing: 0.20,
                              ),
                            ),
                            Row(
                              children: [
                                Icon(Icons.location_on_rounded,color: Colors.blue,),
                                Text(
                                  'Tacoma, WA 98402',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontFamily: 'Manrope',
                                    fontWeight: FontWeight.w400,
                                    // letterSpacing: 0.40,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ]),
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              itemList.length,
              (index) => buildIndicator(index),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildIndicator(int index) {
    double indicatorSize = _currentPage == index ? 40.0 : 15.0;
    return Container(
      width: indicatorSize,
      height: 5,
      margin: EdgeInsets.symmetric(horizontal: 4),
      // decoration: BoxDecoration(
      //   shape: _currentPage == index ? BoxShape.rectangle : BoxShape.circle,
      //   color: _currentPage == index ? Color(0xFF2688FF) : Colors.grey,
      // ),
      decoration: ShapeDecoration(
        color: _currentPage == index ? Color(0xFF2688FF) : Colors.grey,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
