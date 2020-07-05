import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../Widgets/commonWidgets.dart';

class userCart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      appBar: AppBar(
//        title: Text('Cart'),
//      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(16, 10, 16, 16),
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(bottom: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Items on Cart',
                      style: TextStyle(
                        fontFamily: 'OpenSans',
                        fontSize: 14,
                        color: const Color(0xff323232),
                        fontWeight: FontWeight.w700,
                        height: 1.6666666666666667,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
              ),
              Card(
                shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.circular(2.0),
//        borderRadius: BorderRadius.only(topRight: Radius.circular(2), topLeft: Radius.circular(2)),
                ),
                margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Column(
                  children: <Widget>[
                    card(),
                    card(),
                    card(),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Container(
//                            color: Colors.yellow,
                            height: 30,
                            alignment: Alignment.centerLeft,
                            padding: EdgeInsets.only(left: 10),
                            child: Text(
                              '₹99/-minimum order required to place order',
                              style: TextStyle(
                                fontFamily: 'OpenSans',
                                fontSize: 11,
                                color: const Color(0xffff5555),
                                fontWeight: FontWeight.w600,
                                height: 1,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                height: 60,
                padding: EdgeInsets.only(top: 10),
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1.0),
                    ),
                    labelText: 'Any Instructions?',
                      labelStyle: TextStyle(
                        fontFamily: 'OpenSans',
                        fontSize: 14,
                        color: const Color(0xff323232),
                      )
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class card extends StatefulWidget {
  @override
  _card createState() => _card();
}

class _card extends State<card> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(8, 8, 8, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                //item image
                Column(
                  children: <Widget>[
                    Image(
                      image: AssetImage('images/tempCart.jpg'),
                      width: 80,
                    ),
                  ],
                ),
                //title section
                Expanded(
                  child: Container(
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          child: Text(
                            'Chevas Regal (Blended)',
                            style: TextStyle(
                              fontFamily: 'Open Sans',
                              fontSize: 14,
                              color: const Color(0xff131313),
                              fontWeight: FontWeight.w700,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Container(
                          child: Text(
                            '32% Alc.  17°C   3C/ml',
                            style: TextStyle(
                              fontFamily: 'Open Sans',
                              fontSize: 12,
                              color: const Color(0xff838383),
                              fontWeight: FontWeight.w600,
                              height: 1.5,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                              child: Text(
                                '₹1,200',
                                style: TextStyle(
                                  fontFamily: 'Open Sans',
                                  fontSize: 14,
                                  color: const Color(0xff131313),
                                  fontWeight: FontWeight.w700,
                                  height: 1,
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
//                  color: Colors.yellow,
                  child: Column(
                    children: <Widget>[
                      Row(
//                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          qCounter(),
                        ],
                      ),
                      Container(
                        padding: const EdgeInsets.only(top: 10),
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            '₹1,200/-',
                            style: TextStyle(
                              fontFamily: 'OpenSans',
                              fontSize: 11,
                              color: const Color(0xff707070),
                              fontWeight: FontWeight.w600,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
