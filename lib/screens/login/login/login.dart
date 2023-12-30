import 'package:flutter/material.dart';
import 'package:untitled1/screens/login/otp/otp.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController _textController = TextEditingController();
  bool visibleCorrectMark = false;
  bool visibleListItem = false;
  List<int> buttonNumbers = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  DropdownItem? tappedItem= DropdownItem(name: "+88", imagePath: "assets/intro/login/bangladesh.png");

  final List<DropdownItem> items = [
    DropdownItem(name: "+88", imagePath: "assets/intro/login/bangladesh.png"),
    DropdownItem(name: "+00", imagePath: "assets/intro/login/bangladesh.png"),
    DropdownItem(name: "+98", imagePath: "assets/intro/login/bangladesh.png"),
    DropdownItem(name: "+99", imagePath: "assets/intro/login/bangladesh.png"),
    DropdownItem(name: "+99", imagePath: "assets/intro/login/bangladesh.png"),
    DropdownItem(name: "+12", imagePath: "assets/intro/login/bangladesh.png"),
  ];

  void _appendToInput(int value) {
    if (_textController.text.length < 10) {
      if (value == 0) {
        _removeLastCharacter();
      } else {
        setState(() {
          _textController.text = _textController.text + value.toString();
        });
      }
    }
    if (_textController.text.length > 9) {
      setState(() {
        visibleCorrectMark = true;
        print(_textController.text);
      });
    }
  }

  void _removeLastCharacter() {
    if (_textController.text.isNotEmpty) {
      setState(() {
        _textController.text =
            _textController.text.substring(0, _textController.text.length - 1);
        visibleCorrectMark = false;
      });
    }
  }

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
                color: Color(0xFFDE0C63),
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
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: SizedBox(
                        width: 255,
                        child: Opacity(
                          opacity: 0.60,
                          child: Text(
                            ' We will send you a 4 digit code to login.',
                            style: TextStyle(
                              color: Color(0xFF171930),
                              fontSize: 13,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                              height: 0.12,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 35.0),
                      child: Container(
                        width: 327,
                        height: 52,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Container(
                                width: 100,
                                height: 18,
                                child: Row(
                                  children: [
                                    Image.asset(
                                        "assets/intro/login/bangladesh.png"),
                                   if(tappedItem!=null) Text(
                                      '${tappedItem!.name}',
                                      style: TextStyle(
                                        color: Color(0xFF3F4158),
                                        fontSize: 16,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    GestureDetector(
                                        onTap: () {
                                          // Handle tap event
                                          setState(() {
                                            visibleListItem=true;

                                          });
                                        },
                                        child: Icon(Icons.arrow_drop_down))
                                  ],
                                ),
                              ),
                              Expanded(
                                child: TextField(
                                  controller: _textController,
                                  // maxLength: 10,
                                  readOnly: true,
                                  decoration: InputDecoration(
                                    // labelText: 'Enter text (max 10 characters)',
                                    border: InputBorder.none,
                                    // Remove underline
                                    counter: null, // Remove character counter
                                  ),
                                ),
                              ),
                              Visibility(
                                  visible: visibleCorrectMark,
                                  child: Image.asset(
                                    "assets/intro/login/right_mark.png",
                                    width: 25,
                                    height: 25,
                                  ))
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 60.0),
                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Otp(), // Replace with the actual widget for your next screen
                              ));
                        },
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
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 110,
            left:100,
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: Visibility(
                visible: visibleListItem,
                child: Container(
                  height: 200,
                  width: 70,
                  color: Colors.white,
                  child: ListView.builder(
                    itemCount: items.length,
                    itemBuilder: (BuildContext context, int index) {
                      return
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              tappedItem=items[index];
                              setState(() {
                                visibleListItem=false;

                              });
                              print(tappedItem!.name);
                            });
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Container(
                              width: 100,
                              height: 18,
                              child: Row(
                                children: [
                                  Image.asset("assets/intro/login/bangladesh.png"),
                                  Text(
                                    '${items[index].name}',
                                    style: TextStyle(
                                      color: Color(0xFF3F4158),
                                      fontSize: 16,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  // GestureDetector(
                                  //     onTap: () {
                                  //       // Handle tap event
                                  //       print('Dropdown arrow tapped!');
                                  //
                                  //
                                  //     },
                                  //     child: Icon(Icons.arrow_drop_down))
                                ],
                              ),
                            ),
                          ),
                        );

                    },
                  ),



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
                    Container(
                      width: MediaQuery.of(context).size.width,
                      color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(
                            "assets/intro/login/dot.png",
                            width: 25,
                            height: 15,
                          ),
                          // ElevatedButton(
                          //   style: ButtonStyle(
                          //     // backgroundColor: Colors.white,
                          //   ),
                          //   onPressed: () {
                          //     setState(() {
                          //       _textController.text =
                          //           _textController.text + 0.toString();
                          //     });
                          //   },
                          //   child: Text("0"),
                          // ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 44.0, right: 44.0),
                            child: Text(
                              "0",
                              style: TextStyle(
                                color: Color(0xFF3F4158),
                                fontWeight: FontWeight.w500,
                                fontSize: 22,
                              ),
                            ),
                          ),
                          IconButton(
                            icon: Icon(Icons.arrow_back),
                            onPressed: () {
                              _removeLastCharacter();
                            },
                          ),
                        ],
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
class DropdownItem {
  final String name;
  final String imagePath;

  DropdownItem({required this.name, required this.imagePath});
}
// class CharacterInputWidget extends StatefulWidget {
//   @override
//   _CharacterInputWidgetState createState() => _CharacterInputWidgetState();
// }
//
// class _CharacterInputWidgetState extends State<CharacterInputWidget> {
//   TextEditingController _textController = TextEditingController();
//
//   List<int> buttonNumbers = [1, 2, 3, 4, 5, 6, 7, 8, 9];
//
//   void _appendToInput(int value) {
//     if (_textController.text.length < 10) {
//       if (value == 0) {
//         _removeLastCharacter();
//       } else {
//         setState(() {
//           _textController.text = _textController.text + value.toString();
//         });
//       }
//     }
//   }
//
//   void _removeLastCharacter() {
//     if (_textController.text.isNotEmpty) {
//       setState(() {
//         _textController.text =
//             _textController.text.substring(0, _textController.text.length - 1);
//       });
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return ;
//   }
// }
