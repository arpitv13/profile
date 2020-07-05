import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../main.dart';
//import 'package:pin_code_text_field/pin_code_text_field.dart';

class signUp extends StatelessWidget {
  signUp({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Container(
//                      color: Colors.red,
                        height: size.height / 6,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  'Create new account',
                                  style: TextStyle(
                                    fontFamily: 'OpenSans',
                                    fontSize: 18,
                                    color: const Color(0xff131313),
                                    fontWeight: FontWeight.w800,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  'Create an account with Batilwale to \norder your first drink.',
                                  style: TextStyle(
                                    fontFamily: 'OpenSans',
                                    fontSize: 14,
                                    color: const Color(0xff838383),
                                    height: 1.4285714285714286,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
//                      color: Colors.blue,
                        height: size.height / 3.5,
//                      height: ,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  width: size.width / 1.2,
                                  height: size.height / 12,
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText: 'Name',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Stack(
                                  children: <Widget>[
                                    Container(
                                      width: size.width / 1.2,
                                      height: size.height / 12,
                                      child: TextField(
                                        decoration: InputDecoration(
                                          border: OutlineInputBorder(),
                                          labelText: 'Aadhar ID Number',
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      //TODO fix scanner logo position
                                      top: 14,
                                      right: 10,
                                      child: Stack(
                                        children: <Widget>[
                                          SvgPicture.string(
                                            '<svg viewBox="21582.5 -7644.5 22.0 22.0" ><path transform="translate(0.81, 0.75)" d="M 21581.693359375 -7639.2529296875 L 21581.693359375 -7645.2529296875 L 21587.693359375 -7645.2529296875" fill="none" stroke="#131313" stroke-width="1.600000023841858" stroke-linecap="round" stroke-linejoin="round" /><path transform="translate(16.81, 0.75)" d="M 21587.693359375 -7639.2529296875 L 21587.693359375 -7645.2529296875 L 21581.693359375 -7645.2529296875" fill="none" stroke="#131313" stroke-width="1.600000023841858" stroke-linecap="round" stroke-linejoin="round" /><path transform="translate(0.81, 16.75)" d="M 21581.693359375 -7645.2529296875 L 21581.693359375 -7639.2529296875 L 21587.693359375 -7639.2529296875" fill="none" stroke="#131313" stroke-width="1.600000023841858" stroke-linecap="round" stroke-linejoin="round" /><path transform="translate(16.81, 16.75)" d="M 21587.693359375 -7645.2529296875 L 21587.693359375 -7639.2529296875 L 21581.693359375 -7639.2529296875" fill="none" stroke="#131313" stroke-width="1.600000023841858" stroke-linecap="round" stroke-linejoin="round" /></svg>',
                                            allowDrawingOutsideViewBox: true,
                                          ),
                                          Positioned(
                                            top: 7,
                                            left: 7,
                                            child: Container(
                                              width: 8.0,
                                              height: 8.0,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(1.0),
                                                border: Border.all(
                                                    width: 1.6,
                                                    color: const Color(
                                                        0xff131313)),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  width: size.width / 1.2,
                                  height: size.height / 12,
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText: 'Phone Number',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => signIn()),
                          );
                        },
                        child: Container(
                          padding: EdgeInsets.fromLTRB(45, 10, 45, 10),
                          decoration: BoxDecoration(
                              border: Border.all(width: 2, color: Colors.black),
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(5)),
                          child: Text(
                            'Create an account',
                            style: TextStyle(
                              fontFamily: 'OpenSans',
                              fontSize: 15.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProfileScreen()),
                      );
                    },
                    child: Container(
//                     color: Colors.red,
                      height: size.height / 6,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Skip for now',
                            style: TextStyle(
                              fontFamily: 'OpenSans',
                              fontSize: 12,
                              color: const Color(0xff0033ff),
                              fontWeight: FontWeight.w700,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class signIn extends StatelessWidget {
  signIn({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                SizedBox(height: 100),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Please enter your OTP',
                      style: TextStyle(
                        fontFamily: 'OpenSans',
                        fontSize: 18,
                        color: const Color(0xff131313),
                        fontWeight: FontWeight.w800,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
//                   PinCodeTextField(
//                     autofocus: true,
//                     controller: controller,
//                     hideCharacter: true,
//                     highlight: true,
//                     highlightColor: Colors.blue,
//                     defaultBorderColor: Colors.black,
//                     hasTextBorderColor: Colors.green,
//                     maxLength: pinLength,
//                     hasError: hasError,
//                     maskCharacter: "😎",
//                     onTextChanged: (text) {
//                       setState(() {
//                         hasError = false;
//                       });
//                     },
//                     onDone: (text) {
//                       print("DONE $text");
//                       print("DONE CONTROLLER ${controller.text}");
//                     },
//                     wrapAlignment: WrapAlignment.spaceAround,
//                     pinBoxDecoration:
//                     ProvidedPinBoxDecoration.defaultPinBoxDecoration,
//                     pinTextStyle: TextStyle(fontSize: 30.0),
//                     pinTextAnimatedSwitcherTransition:
//                     ProvidedPinBoxTextAnimation.scalingTransition,
////                    pinBoxColor: Colors.green[100],
//                     pinTextAnimatedSwitcherDuration:
//                     Duration(milliseconds: 300),
////                    highlightAnimation: true,
//                     highlightPinBoxColor: Colors.red,
//                     highlightAnimationBeginColor: Colors.black,
//                     highlightAnimationEndColor: Colors.white12,
//                     keyboardType: TextInputType.number,
//                   ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
