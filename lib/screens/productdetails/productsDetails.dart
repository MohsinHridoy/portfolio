import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled1/screens/cert/cert.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    //   statusBarColor: Colors.white, // Set the desired status bar color
    // ));
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 20),
          _buildHeader(context),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    width: 210,
                    height: 298,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/left_icon.png")
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.star,color: Colors.red,),
                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: '4.7',
                                  style: TextStyle(
                                    color: Color(0xFF111111),
                                    fontSize: 16,
                                    fontFamily: 'Montserrat Alternates',
                                    fontWeight: FontWeight.w700,
                                    height: 0.08,
                                    letterSpacing: 0.08,
                                  ),
                                ),
                                TextSpan(
                                  text: ' ',
                                  style: TextStyle(
                                    color: Color(0xFF434E58),
                                    fontSize: 16,
                                    fontFamily: 'Plus Jakarta Sans',
                                    fontWeight: FontWeight.w600,
                                    height: 0.08,
                                    letterSpacing: 0.08,
                                  ),
                                ),
                                TextSpan(
                                  text: '(32 reviews)',
                                  style: TextStyle(
                                    color: Color(0xFF7D7D7D),
                                    fontSize: 16,
                                    fontFamily: 'Montserrat Alternates',
                                    fontWeight: FontWeight.w500,
                                    height: 0.08,
                                    letterSpacing: 0.08,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: 32,
                        height: 32,
                        child: Image.asset("assets/images/love.png")
                      )
                    ],
                  ),
                  _buildProductTitle(),
                  _buildProductDescription(),

                  _buildWarrantyDetails1('Warranty Period:', '1 year service warranty.'),
                  _buildWarrantyDetails(),
                  _buildWarrantyDetails(),
                  _buildWarrantyDetails(),
                  _buildWarrantyDetails(),
                  _buildWarrantyDetails(),
                  _buildWarrantyDetails(),
                ],
              ),
            ),
          ),

          _buildPriceAndAddToBag( context),

        ],
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 32,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildBackButton(),
          const SizedBox(width: 30),
          Text(
            'Product Detail',
            style: TextStyle(
              color: Color(0xFF2F2F2F),
              fontSize: 20,
              fontFamily: 'Montserrat Alternates',
              fontWeight: FontWeight.w600,
              letterSpacing: 1,
            ),
          ),
          const SizedBox(width: 30),
          _buildNotificationIcon(),
        ],
      ),
    );
  }
  Widget _buildWarrantyDetails1(String title, String description) {
    return Container(
      width: 342,
      height: 50,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              color: Color(0xFF232D3B),
              fontSize: 14,
              fontFamily: 'Montserrat Alternates',
              fontWeight: FontWeight.w700,
              letterSpacing: 0.70,
            ),
          ),
          SizedBox(height: 5),
          Text(
            description,
            style: TextStyle(
              color: Color(0xFF555F6D),
              fontSize: 14,
              fontFamily: 'Montserrat Alternates',
              fontWeight: FontWeight.w800,
              letterSpacing: 0.70,
            ),
          ),
        ],
      ),
    );
  }
  Widget _buildBackButton() {
    return Container(
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: Color(0xFFF2F2F2),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Icon(Icons.arrow_back_ios_new_rounded),
    );
  }

  Widget _buildNotificationIcon() {
    return Container(
      width: 28,
      height: 28,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(),
      child: Stack(
        children: [
          Positioned(
            left: 5,
            top: 1,
            child: Icon(Icons.backpack_outlined),
          ),
          Positioned(
            left: 16,
            top: 0,
            child: Container(
              width: 9,
              height: 9,
              decoration: BoxDecoration(
                color: Color(0xFFF45430),
                shape: BoxShape.circle,
                border: Border.all(
                  width: 2,
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildProductTitle() {
    return Text(
      'FOSSIL GRANT BROWN',
      style: TextStyle(
        color: Color(0xFF2F2F2F),
        fontSize: 24,
        fontFamily: 'Montserrat Alternates',
        fontWeight: FontWeight.w600,
      ),
    );
  }

  Widget _buildProductDescription() {
    return SizedBox(
      width: 342,
      height: 100,
      child: Text(
        'The Fossil Grant series Brown Chronograph Leather Mens '
            'Watch is a stylish and reliable timepiece. Boasting a '
            'classic brown leather band and chronograph dial ',
        style: TextStyle(
          color: Color(0xFF555F6D),
          fontSize: 14,
          fontFamily: 'Montserrat Alternates',
          fontWeight: FontWeight.w500,
          letterSpacing: 0.70,
        ),
      ),
    );
  }
  Widget _buildPriceAndAddToBag(BuildContext context) {
    return Container(
      width: 390,
      height: 86,
      decoration: BoxDecoration(color: Colors.white),
      child: Row(
        children: [
          _buildPrice(),
          SizedBox(width: 130,),
          _buildAddToBagButton(context),
        ],
      ),
    );
  }

  Widget _buildAddToBagButton(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Cert()),
        );
      },
      child: Container(
        width: 193,
        height: 48,
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(1.00, -0.05),
            end: Alignment(-1, 0.05),
            colors: [Color(0xFF259DA5), Color(0xFF27889D)],
          ),
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Color(0x8C2791A1),
              blurRadius: 12,
              offset: Offset(0, 4),
              spreadRadius: -5,
            ),
          ],
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 24,
              height: 24,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0),
              ),
              child: Icon(Icons.backpack_outlined, color: Colors.white),
            ),
            SizedBox(width: 10),
            Text(
              'Add to Bag',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontFamily: 'Montserrat Alternates',
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
  Widget _buildPrice() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '\$124',
          style: TextStyle(
            color: Color(0xFF3F6163),
            fontSize: 24,
            fontFamily: 'Montserrat Alternates',
            fontWeight: FontWeight.w700,
            height: 0.06,
            letterSpacing: 0.12,
          ),
        ),
        Text(
          '\$299',
          style: TextStyle(
            color: Color(0xFF999999),
            fontSize: 12,
            fontFamily: 'Montserrat Alternates',
            fontWeight: FontWeight.w500,
            height: 0.14,
            letterSpacing: 0.06,
          ),
        ),
      ],
    );
  }
  Widget _buildWarrantyDetails() {
    return Container(
      width: 342,
      height: 50,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Warranty Period:',
            style: TextStyle(
              color: Color(0xFF232D3B),
              fontSize: 14,
              fontFamily: 'Montserrat Alternates',
              fontWeight: FontWeight.w700,
              letterSpacing: 0.70,
            ),
          ),
          SizedBox(height: 5),
          Text(
            '1 year service warranty.',
            style: TextStyle(
              color: Color(0xFF555F6D),
              fontSize: 14,
              fontFamily: 'Montserrat Alternates',
              fontWeight: FontWeight.w800,
              letterSpacing: 0.70,
            ),
          ),
        ],
      ),
    );
  }
}
