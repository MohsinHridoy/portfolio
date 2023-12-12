import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Cert extends StatefulWidget {
  const Cert({Key? key}) : super(key: key);

  @override
  State<Cert> createState() => _CertState();
}

class _CertState extends State<Cert> {
  bool isBottomSheetVisible = false;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.white, // Set the desired status bar color
    ));
    return Scaffold(
      body: Container(
        // height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        clipBehavior: Clip.antiAlias,
        decoration: ShapeDecoration(
          color: Color(0xFFF6F6F6),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        child: Column(
          children: [
            _buildHeader(),
           _buildProductDetails(context),
            // Container(
            //     width: MediaQuery.of(context).size.width,
            //     color: Colors.transparent,
            //     child: Stack(
            //       children: [
            //         Positioned(
            //           bottom: 0,
            //           child: Container(
            //             height: 290,
            //             width: MediaQuery.of(context).size.width,
            //             decoration: ShapeDecoration(
            //               color: Colors.white,
            //               shape: RoundedRectangleBorder(
            //                 borderRadius: BorderRadius.only(
            //                   topLeft: Radius.circular(22),
            //                   topRight: Radius.circular(22),
            //                 ),
            //               ),
            //             ),
            //             child: Column(
            //               children: [
            //                 SizedBox(
            //                   height: 30,
            //                 ),
            //                 Container(
            //                   width: 342,
            //                   height: 50,
            //                   decoration: ShapeDecoration(
            //                     color: Colors.white,
            //                     shape: RoundedRectangleBorder(
            //                       side: BorderSide(
            //                           width: 1, color: Color(0xFFE3E7EB)),
            //                       borderRadius: BorderRadius.circular(8),
            //                     ),
            //                   ),
            //                   child: Row(
            //                     mainAxisAlignment:
            //                         MainAxisAlignment.spaceBetween,
            //                     children: [
            //                       Text(
            //                         'Promo code',
            //                         style: TextStyle(
            //                           color: Color(0xFF9CA4AB),
            //                           fontSize: 14,
            //                           fontFamily: 'Montserrat Alternates',
            //                           fontWeight: FontWeight.w500,
            //                           height: 0.11,
            //                           letterSpacing: 0.07,
            //                         ),
            //                       ),
            //                       Text(
            //                         'Add',
            //                         style: TextStyle(
            //                           color: Color(0xFF259DA5),
            //                           fontSize: 14,
            //                           fontFamily: 'Montserrat Alternates',
            //                           fontWeight: FontWeight.w600,
            //                           height: 0.11,
            //                           letterSpacing: 0.07,
            //                         ),
            //                       )
            //                     ],
            //                   ),
            //                 ),
            //                 Container(
            //                   height: 50,
            //                   child: Padding(
            //                     padding: const EdgeInsets.all(8.0),
            //                     child: Row(
            //                       mainAxisAlignment:
            //                           MainAxisAlignment.spaceBetween,
            //                       children: [
            //                         Text(
            //                           'Sub Total',
            //                           style: TextStyle(
            //                             color: Color(0xFF555F6D),
            //                             fontSize: 16,
            //                             fontFamily: 'Montserrat Alternates',
            //                             fontWeight: FontWeight.w500,
            //                             height: 0.09,
            //                           ),
            //                         ),
            //                         Text(
            //                           '\$172',
            //                           textAlign: TextAlign.right,
            //                           style: TextStyle(
            //                             color: Color(0xFF111111),
            //                             fontSize: 14,
            //                             fontFamily: 'Montserrat Alternates',
            //                             fontWeight: FontWeight.w600,
            //                             height: 0.11,
            //                           ),
            //                         )
            //                       ],
            //                     ),
            //                   ),
            //                 ),
            //                 Container(
            //                   height: 50,
            //                   child: Padding(
            //                     padding: const EdgeInsets.all(8.0),
            //                     child: Row(
            //                       mainAxisAlignment:
            //                           MainAxisAlignment.spaceBetween,
            //                       children: [
            //                         Text(
            //                           'Shipping',
            //                           style: TextStyle(
            //                             color: Color(0xFF555F6D),
            //                             fontSize: 16,
            //                             fontFamily: 'Montserrat Alternates',
            //                             fontWeight: FontWeight.w500,
            //                             height: 0.09,
            //                           ),
            //                         ),
            //                         Text(
            //                           'Free',
            //                           textAlign: TextAlign.right,
            //                           style: TextStyle(
            //                             color: Color(0xFF109A58),
            //                             fontSize: 14,
            //                             fontFamily: 'Montserrat Alternates',
            //                             fontWeight: FontWeight.w600,
            //                             height: 0.11,
            //                           ),
            //                         )
            //                       ],
            //                     ),
            //                   ),
            //                 ),
            //                 Container(
            //                   height: 50,
            //                   child: Padding(
            //                     padding: const EdgeInsets.all(8.0),
            //                     child: Row(
            //                       mainAxisAlignment:
            //                           MainAxisAlignment.spaceBetween,
            //                       children: [
            //                         Text(
            //                           'Sub Total',
            //                           style: TextStyle(
            //                             color: Color(0xFF555F6D),
            //                             fontSize: 16,
            //                             fontFamily: 'Montserrat Alternates',
            //                             fontWeight: FontWeight.w500,
            //                             height: 0.09,
            //                           ),
            //                         ),
            //                         Text(
            //                           '\$172',
            //                           textAlign: TextAlign.right,
            //                           style: TextStyle(
            //                             color: Color(0xFF111111),
            //                             fontSize: 14,
            //                             fontFamily: 'Montserrat Alternates',
            //                             fontWeight: FontWeight.w600,
            //                             height: 0.11,
            //                           ),
            //                         )
            //                       ],
            //                     ),
            //                   ),
            //                 ),
            //                 Container(
            //                   width: 342,
            //                   height: 52,
            //                   padding: const EdgeInsets.symmetric(
            //                       horizontal: 32, vertical: 16),
            //                   clipBehavior: Clip.antiAlias,
            //                   decoration: ShapeDecoration(
            //                     gradient: LinearGradient(
            //                       begin: Alignment(1.00, -0.05),
            //                       end: Alignment(-1, 0.05),
            //                       colors: [
            //                         Color(0xFF259DA5),
            //                         Color(0xFF27889D)
            //                       ],
            //                     ),
            //                     shape: RoundedRectangleBorder(
            //                         borderRadius: BorderRadius.circular(8)),
            //                     shadows: [
            //                       BoxShadow(
            //                         color: Color(0x8C2791A1),
            //                         blurRadius: 12,
            //                         offset: Offset(0, 4),
            //                         spreadRadius: -5,
            //                       )
            //                     ],
            //                   ),
            //                   child: Center(
            //                     child: Text(
            //                       'Checkout',
            //                       style: TextStyle(
            //                         color: Colors.white,
            //                         fontSize: 16,
            //                         fontFamily: 'Montserrat Alternates',
            //                         fontWeight: FontWeight.w600,
            //                         height: 0,
            //                       ),
            //                     ),
            //                   ),
            //                 )
            //               ],
            //             ),
            //           ),
            //         ),
            //         Positioned(
            //           top: 12,
            //           left: 160,
            //           child: GestureDetector(
            //             onTap: () {
            //               setState(() {
            //                 isBottomSheetVisible = !isBottomSheetVisible;
            //               });
            //             },
            //             child: Container(
            //               width: 58,
            //               height: 58,
            //               decoration: ShapeDecoration(
            //                 color: Colors.white,
            //                 shape: OvalBorder(),
            //               ),
            //               child: Center(
            //                 child: Icon(
            //                   isBottomSheetVisible
            //                       ? Icons.keyboard_arrow_down
            //                       : Icons.keyboard_arrow_up,
            //                   color: Colors.black,
            //                 ),
            //               ),
            //             ),
            //           ),
            //         ),
            //       ],
            //     ),
            //   ),
          ],
        ),
      ),
      bottomSheet: isBottomSheetVisible
          ?  Container(
                width: MediaQuery.of(context).size.width,
                height: 325,
        color: Color(0xFFF6F6F6),


                child: Stack(
                  children: [
                    Positioned(
                      bottom: 0,
                      child: Container(
                        height: 290,
                        width: MediaQuery.of(context).size.width,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(22),
                              topRight: Radius.circular(22),
                            ),
                          ),
                        ),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 30,
                            ),
                            Container(
                              width: 342,
                              height: 50,
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                      width: 1, color: Color(0xFFE3E7EB)),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Promo code',
                                    style: TextStyle(
                                      color: Color(0xFF9CA4AB),
                                      fontSize: 14,
                                      fontFamily: 'Montserrat Alternates',
                                      fontWeight: FontWeight.w500,
                                      height: 0.11,
                                      letterSpacing: 0.07,
                                    ),
                                  ),
                                  Text(
                                    'Add',
                                    style: TextStyle(
                                      color: Color(0xFF259DA5),
                                      fontSize: 14,
                                      fontFamily: 'Montserrat Alternates',
                                      fontWeight: FontWeight.w600,
                                      height: 0.11,
                                      letterSpacing: 0.07,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              height: 50,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Sub Total',
                                      style: TextStyle(
                                        color: Color(0xFF555F6D),
                                        fontSize: 16,
                                        fontFamily: 'Montserrat Alternates',
                                        fontWeight: FontWeight.w500,
                                        height: 0.09,
                                      ),
                                    ),
                                    Text(
                                      '\$172',
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                        color: Color(0xFF111111),
                                        fontSize: 14,
                                        fontFamily: 'Montserrat Alternates',
                                        fontWeight: FontWeight.w600,
                                        height: 0.11,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 50,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Shipping',
                                      style: TextStyle(
                                        color: Color(0xFF555F6D),
                                        fontSize: 16,
                                        fontFamily: 'Montserrat Alternates',
                                        fontWeight: FontWeight.w500,
                                        height: 0.09,
                                      ),
                                    ),
                                    Text(
                                      'Free',
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                        color: Color(0xFF109A58),
                                        fontSize: 14,
                                        fontFamily: 'Montserrat Alternates',
                                        fontWeight: FontWeight.w600,
                                        height: 0.11,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 50,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Sub Total',
                                      style: TextStyle(
                                        color: Color(0xFF555F6D),
                                        fontSize: 16,
                                        fontFamily: 'Montserrat Alternates',
                                        fontWeight: FontWeight.w500,
                                        height: 0.09,
                                      ),
                                    ),
                                    Text(
                                      '\$172',
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                        color: Color(0xFF111111),
                                        fontSize: 14,
                                        fontFamily: 'Montserrat Alternates',
                                        fontWeight: FontWeight.w600,
                                        height: 0.11,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: 342,
                              height: 52,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 32, vertical: 16),
                              clipBehavior: Clip.antiAlias,
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
                                    borderRadius: BorderRadius.circular(8)),
                                shadows: [
                                  BoxShadow(
                                    color: Color(0x8C2791A1),
                                    blurRadius: 12,
                                    offset: Offset(0, 4),
                                    spreadRadius: -5,
                                  )
                                ],
                              ),
                              child: Center(
                                child: Text(
                                  'Checkout',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontFamily: 'Montserrat Alternates',
                                    fontWeight: FontWeight.w600,
                                    height: 0,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: 12,
                      left: 160,
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            isBottomSheetVisible = !isBottomSheetVisible;
                          });
                        },
                        child: Container(
                          width: 58,
                          height: 58,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: OvalBorder(),
                          ),
                          child: Center(
                            child: Icon(
                              isBottomSheetVisible
                                  ? Icons.keyboard_arrow_down
                                  : Icons.keyboard_arrow_up,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )

          : GestureDetector(
              onTap: () {
                setState(() {
                  isBottomSheetVisible = !isBottomSheetVisible;
                });
              },
              child: Container(
                width: 58,
                height: 58,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: OvalBorder(),
                ),
                child: Center(
                  child: Icon(
                    isBottomSheetVisible
                        ? Icons.keyboard_arrow_down
                        : Icons.keyboard_arrow_up,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
    );
  }

  Widget _buildHeader() {
    return Container(
      width: 390,
      height: 88,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 28),
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Color(0x1C23262D),
            blurRadius: 10,
            offset: Offset(0, 1),
            spreadRadius: 0,
          )
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: Row(
              children: [
                _buildCartIcon(),
                const SizedBox(width: 115),
                Text(
                  'Cart',
                  style: TextStyle(
                    color: Color(0xFF2F2F2F),
                    fontSize: 20,
                    fontFamily: 'Montserrat Alternates',
                    fontWeight: FontWeight.w600,
                    height: 0,
                    letterSpacing: 1,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCartIcon() {
    return Container(
      padding: const EdgeInsets.all(4),
      decoration: ShapeDecoration(
        color: Color(0xFFF2F2F2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: Row(
        children: [
          Container(
            width: 24,
            height: 24,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(),
            child: Stack(children: []),
          ),
        ],
      ),
    );
  }

  Widget _buildProductDetails(BuildContext context) {
    // Replace this list with your actual list of items
    List<Product> products = [
      Product(
          name: 'Casio Moon Phase | MTP-M305D-1AVDF',
          price: '\$50.00',
          image: 'assets/images/clock_2.png'),
      Product(
          name: 'Casio Moon Phase | MTP-M305D-1AVDFP',
          price: '\$75.00',
          image: 'assets/images/clock_2.png'),
      Product(
          name: 'Casio Moon Phase | MTP-M305D-1AVDFP',
          price: '\$75.00',
          image: 'assets/images/clock_2.png'),

      // Add more products as needed
    ];

    return Container(
      height: MediaQuery.of(context).size.height - 90,
      color: Color(0xFFF6F6F6),
      child: Expanded(
        child: ListView.builder(
          itemCount: products.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20, top: 11),
              child: Container(
                width: 342,
                height: 120,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    _buildProductImage(products[index].image),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: _buildProductInfo(products[index]),
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

  Widget _buildProductImage(String imagePath) {
    return Container(
      width: 66,
      height: 82,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Color(0xFFE9F2F3), // Set your default color here
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.fitHeight,
        ),
      ),
    );
  }

  Widget _buildProductInfo(Product product) {
    return Column(
      children: [
        SizedBox(height: 20),
        _buildProductName(product.name),
        _buildPriceAndQuantity(product),
      ],
    );
  }

  Widget _buildProductName(String name) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: SizedBox(
        width: 262,
        height: 60,
        child: Text(
          name,
          style: TextStyle(
            color: Color(0xFF232D3B),
            fontSize: 14,
            fontWeight: FontWeight.w600,
            fontFamily: 'Montserrat Alternates',
            height: 1.5,
            letterSpacing: 0.70,
          ),
          softWrap: true,
        ),
      ),
    );
  }

  Widget _buildPriceAndQuantity(Product product) {
    return Container(
      height: 25,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            product.price,
            style: TextStyle(
              color: Color(0xFF7B7B7B),
              fontSize: 16,
              fontWeight: FontWeight.w600,
              height: 0.10,
              letterSpacing: 0.80,
            ),
          ),
          SizedBox(
            width: 110,
          ),
          _buildQuantitySelector(),
        ],
      ),
    );
  }

  Widget _buildQuantitySelector() {
    return Row(
      children: [
        _buildQuantityButton(Icons.add),
        Text(
          '01',
          style: TextStyle(
            color: Color(0xFF111111),
            fontSize: 16,
            fontWeight: FontWeight.w500,
            height: 0.09,
            letterSpacing: 0.08,
          ),
        ),
        _buildQuantityButton(Icons.minimize),
      ],
    );
  }

  Widget _buildQuantityButton(IconData icon) {
    return Container(
      width: 26,
      height: 26,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 1,
            color: Colors.black.withOpacity(0.07999999821186066),
          ),
          borderRadius: BorderRadius.circular(4),
        ),
      ),
      child: Center(
        child: Align(
          alignment: Alignment.center,
          child: Icon(icon),
        ),
      ),
    );
  }
}

class Product {
  final String name;
  final String price;
  final String image;

  Product({required this.name, required this.price, required this.image});
}
