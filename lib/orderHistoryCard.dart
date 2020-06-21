import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class orderHistoryCard extends StatelessWidget {
//  final String orderItems;
//  final String cardItems;

  var orderItems = 'Tullibardine 500 x 1 Tullibardine 500 x 1 KingF 5000 x 2  Beer x 50';
  var orderPrice = '₹3,025.50';
  var userAddress = "Viman Nagar, Pune";
  var orderTime = '08:24 PM on March 23, 2020';

  @override
//  arrowCard({
//    @required this.cardItems,
//    @required this.cardTitle
//  });
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return new Card(
      shape: BeveledRectangleBorder(
        borderRadius: BorderRadius.circular(2.0),
      ),
      margin: EdgeInsets.fromLTRB(16, 1, 16, 16),
      child: Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'ITEMS',
                    style: TextStyle(
                      fontSize: 14,
                      color: const Color(0xff838383),
                    ),
                  ),
                  Text(
                    'TOTAL',
                    style: TextStyle(
                      fontSize: 14,
                      color: const Color(0xff838383),
                    ),)
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(16, 10, 16, 0),
              child: Row(
//                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    width: size.width/1.5,
                    child: Text(
                      '$orderItems',
                      overflow: TextOverflow.clip,
                    ),
                  ),
                  Container(
                      child: Text(
                        '$orderPrice',
                        overflow: TextOverflow.clip,
                      ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(16, 4, 16, 0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
//                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: size.width/2.3,
                    child: Text(
                      '$userAddress \n $orderTime',
                      overflow: TextOverflow.clip,
                      style: TextStyle(
                        fontFamily: 'Open Sans',
                        fontSize: 12,
                        color: const Color(0xff838383),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(16, 5, 16, 16),
              child: Row(
//                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                        child: SvgPicture.string(
                          '<svg viewBox="1.5 3.1 7.9 5.5" ><path transform="translate(-1.52, -3.98)" d="M 5.885910034179688 12.55209732055664 L 3.113458156585693 9.774221420288086 C 3.023140430450439 9.668449401855469 3.029212951660156 9.510778427124023 3.127396583557129 9.412307739257813 C 3.225580453872681 9.313838005065918 3.382792472839355 9.307747840881348 3.48825740814209 9.398327827453613 L 5.880593776702881 11.79764747619629 L 10.55628395080566 7.113644599914551 C 10.66174793243408 7.023063659667969 10.81896114349365 7.029153823852539 10.91714572906494 7.12762451171875 C 11.01532745361328 7.226094722747803 11.02140045166016 7.38376522064209 10.93108177185059 7.489537715911865 L 5.885910034179688 12.55209732055664 Z" fill="#54bf3a" stroke="#54bf3a" stroke-width="0.5" stroke-miterlimit="4" stroke-linecap="butt" /></svg>',
                          allowDrawingOutsideViewBox: true,
                        ),
                      ),
                      Container(
                        child: Text(
                          'Order Confirmed',
                          style: TextStyle(
                            fontFamily: 'Open Sans',
//                      fontSize: 11,
                            color: const Color(0xff131313),
                            fontWeight: FontWeight.w700,
                            height: 1.7272727272727273,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    child: Text(
                      'Repeat Order',
                      style: TextStyle(
                        fontFamily: 'Open Sans',
                        fontSize: 14,
                        color: const Color(0xff0033ff),
                        fontWeight: FontWeight.w600,
                        height: 1.4285714285714286,
                      ),
                      textAlign: TextAlign.left,
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
