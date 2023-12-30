import 'package:flutter/material.dart';

class Otp extends StatefulWidget {
  const Otp({super.key});

  @override
  State<Otp> createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  TextEditingController _textController = TextEditingController();
  bool visibleCorrectMark = false;
  bool visibleListItem = false;
  List<int> buttonNumbers = [1, 2, 3, 4, 5, 6, 7, 8, 9];

  final TextEditingController _controller1 = TextEditingController();
  final TextEditingController _controller2 = TextEditingController();
  final TextEditingController _controller3 = TextEditingController();
  final TextEditingController _controller4 = TextEditingController();

  final FocusNode _focusNode1 = FocusNode();
  final FocusNode _focusNode2 = FocusNode();
  final FocusNode _focusNode3 = FocusNode();
  final FocusNode _focusNode4 = FocusNode();

  @override
  void initState() {
    super.initState();

    // Set up focus listeners to move to the next field when one is filled
    _controller1.addListener(() {
      if (_controller1.text.isNotEmpty) {
        FocusScope.of(context).requestFocus(_focusNode2);
      }
    });

    _controller2.addListener(() {
      if (_controller2.text.isNotEmpty) {
        FocusScope.of(context).requestFocus(_focusNode3);
      }
    });

    _controller3.addListener(() {
      if (_controller3.text.isNotEmpty) {
        FocusScope.of(context).requestFocus(_focusNode4);
      }
    });
  }

  void _appendToInput(int value) {
    if (_textController.text.length < 10) {
      if (value == 0) {
        // _removeLastCharacter();
      } else {
        _updateFocusedTextField(value);
      }
    }
    if (_textController.text.length > 9) {
      setState(() {
        visibleCorrectMark = true;
        print(_textController.text);
      });
    }
  }

  void _updateFocusedTextField(int value) {
    if (_focusNode1.hasFocus) {
      _controller1.text = value.toString();
      FocusScope.of(context).requestFocus(_focusNode2);
    } else if (_focusNode2.hasFocus) {
      _controller2.text = value.toString();
      FocusScope.of(context).requestFocus(_focusNode3);
    } else if (_focusNode3.hasFocus) {
      _controller3.text = value.toString();
      FocusScope.of(context).requestFocus(_focusNode4);
    } else if (_focusNode4.hasFocus) {
      _controller4.text = value.toString();
    }
  }

  OutlineInputBorder _defaultBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(8.0),
  );

  OutlineInputBorder _focusedBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(8.0),
    borderSide: BorderSide(color: Colors.blue, width: 2.0),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: -150,
            child: Container(
              width: 390,
              height: 390,
              decoration: ShapeDecoration(
                // color: Colors.red,
                color: Color(0xFFB1C4EA),
                shape: OvalBorder(),
              ),
            ),
          ),
          Positioned(
            top: -40,
            right: -100,
            child: Container(
              width: 188,
              height: 188,
              decoration: ShapeDecoration(
                color: Color(0xFFAAC3F3),
                shape: OvalBorder(),
              ),
            ),
          ),
          Positioned(
            top: 0,
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: Color(0xFFF3F5F9).withOpacity(0.9),
              child: Padding(
                padding: const EdgeInsets.only(left: 48.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 100,
                    ),
                    Row(
                      children: [
                        Opacity(
                          opacity: 0.60,
                          child: Text(
                            'Hello Dear',
                            style: TextStyle(
                              color: Color(0xFF171930),
                              fontSize: 13,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                              height: 0.12,
                            ),
                          ),
                        ),
                        Image.asset("assets/intro/login/hand.png",
                            width: 20, height: 15)
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: SizedBox(
                        width: 274,
                        child: Text(
                          'Enter your \nMobile Number',
                          style: TextStyle(
                            color: Color(0xFF171930),
                            fontSize: 32,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w700,
                            height: 1.1,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: 255,
                      child: Opacity(
                        opacity: 0.60,
                        child: Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: ' We sent it to the number ',
                                style: TextStyle(
                                  color: Color(0xFF171930),
                                  fontSize: 13,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400,
                                  height: 0.12,
                                ),
                              ),
                              TextSpan(
                                text: '01748712884',
                                style: TextStyle(
                                  color: Color(0xFF0052E0),
                                  fontSize: 13,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w600,
                                  height: 0.12,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                      Container(
                            width: 66,
                            height: 64,
                            child: TextFormField(
                              controller: _controller1,
                              focusNode: _focusNode1,
                              readOnly:true ,
                              autofocus: true, // Set autofocus to true for the first field
                              decoration: InputDecoration(
// labelText: 'Input 1',
                                border: _defaultBorder,
                                focusedBorder: _focusedBorder,
                              ),
                            ),
                          ),
                        SizedBox(
                          width: 10,
                        ),
                         Container(
                            width: 66,
                            height: 64,
                            child: TextFormField(
                              controller: _controller2,
                              readOnly:true ,

                              focusNode: _focusNode2,
                              decoration: InputDecoration(
// labelText: 'Input 2',
                                border: _defaultBorder,
                                focusedBorder: _focusedBorder,
                              ),
                            ),
                          ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                            width: 66,
                            height: 64,
                            child: TextFormField(
                              controller: _controller3,
                              focusNode: _focusNode3,
                              readOnly:true ,

                              decoration: InputDecoration(
// labelText: 'Input 3',
                                border: _defaultBorder,
                                focusedBorder: _focusedBorder,
                              ),
                            ),
                          ),
                        SizedBox(
                          width: 10,
                        ),

                       Container(
                            width: 66,
                            height: 64,
                            child: TextFormField(
                              controller: _controller4,
                              focusNode: _focusNode4,
                              readOnly:true ,

                              decoration: InputDecoration(
// labelText: 'Input 4',
                                border: _defaultBorder,
                                focusedBorder: _focusedBorder,

                              ),
                            ),
                          ),

                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 60.0),
                      child: Container(
                        width: 335,
                        height: 52,
                        decoration: ShapeDecoration(
                          gradient: LinearGradient(
                            begin: Alignment(0.76, -0.66),
                            end: Alignment(-0.76, 0.66),
                            colors: [Color(0xFF266ED7), Color(0xFF4D8AEB)],
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                          shadows: [
                            BoxShadow(
                              color: Color(0x891460D0),
                              blurRadius: 23,
                              offset: Offset(0, 11),
                              spreadRadius: -11,
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.all(0.0),
                child: Column(
                  children: [
                    SizedBox(
                      height: 30,
                      child: Container(
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 180,
                      color: Colors.white,
                      child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            // crossAxisSpacing: 2.0,
                            // mainAxisSpacing: 2.0,
                            childAspectRatio: 3),
                        // shrinkWrap: true,
                        itemCount: buttonNumbers.length,
                        itemBuilder: (BuildContext context, int index) {
                          return GestureDetector(
                            onTap: () => _appendToInput(buttonNumbers[index]),
                            child: Container(
                              height: 40,
                              width: 40,
                              child: Center(
                                child: Text(
                                  buttonNumbers[index].toString(),
                                  style: TextStyle(
                                    color: Color(0xFF3F4158),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 22,
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
              ),
            ),
          ),
        ],
      ),
    );
  }
}

