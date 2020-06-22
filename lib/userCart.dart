import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'counter.dart';


class userCart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.fromLTRB(16, 16, 16, 16),
          child: Column(
            children: <Widget>[
              Row(
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
              Row(
                children: <Widget>[
                  qCounter(),
                ],
              ),
              Row(
                children: <Widget>[
                  card(),
                ],
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
    return new Card(
        shape: BeveledRectangleBorder(
        borderRadius: BorderRadius.circular(2.0),
    ),
//    margin: EdgeInsets.fromLTRB(16, 1, 16, 16),
    child: Container(
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(16, 16, 16, 16),
            child: Row(
              children: <Widget>[
                Text('Pussy')
              ],
            ),
          )
        ],
      ),

    ),
    );
  }
}