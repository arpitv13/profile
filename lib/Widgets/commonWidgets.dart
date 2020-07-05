import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


import 'package:hexcolor/hexcolor.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';

//arrowCard - Card with an arrow on the right side
class arrowCard extends StatelessWidget {
  final String cardTitle;
  final String cardItems;

  @override
  arrowCard({
    @required this.cardItems,
    @required this.cardTitle
  });
  Widget build(BuildContext context) {
    return new Card(
      shape: BeveledRectangleBorder(
        borderRadius: BorderRadius.circular(2.0),
      ),
      margin: EdgeInsets.fromLTRB(16, 1, 16, 0),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 5),
                  child: Column(
                    children: <Widget>[
                      Text(
                        '$cardTitle',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
//                  padding: const EdgeInsets.only(right:20.0),
//                  color: Colors.red,
                  child: Text(
                    '$cardItems',
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 12,
                      color: const Color(0xff838383),
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                Container(
                  child: RotatedBox(
                    quarterTurns: 1,
                    child: SvgPicture.string(
                      '<svg viewBox="35.1 7.7 14.2 7.5" ><path transform="matrix(0.0, -1.0, 1.0, 0.0, 6316.04, 12517.92)" d="M 12502.7724609375 -6280.89404296875 L 12510.24609375 -6273.658203125 L 12502.7724609375 -6266.6884765625" fill="none" stroke="#000000" stroke-width="1.600000023841858" stroke-miterlimit="4" stroke-linecap="round" /></svg>',
                      allowDrawingOutsideViewBox: true,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


//counter - Widget for quantity counters
typedef void CounterChangeCallback(num value);

class Counter extends StatelessWidget {
  final CounterChangeCallback onChanged;

  Counter({
    Key key,
    @required num initialValue,
    @required this.minValue,
    @required this.maxValue,
    @required this.onChanged,
    @required this.decimalPlaces,
    this.color,
    this.textStyle,
    this.step = 1,
    this.buttonSize = 25,
  })  : assert(initialValue != null),
        assert(minValue != null),
        assert(maxValue != null),
        assert(maxValue > minValue),
        assert(initialValue >= minValue && initialValue <= maxValue),
        assert(step > 0),
        selectedValue = initialValue,
        super(key: key);

  ///min value user can pick
  final num minValue;

  ///max value user can pick
  final num maxValue;

  /// decimal places required by the counter
  final int decimalPlaces;

  ///Currently selected integer value
  num selectedValue;

  /// if min=0, max=5, step=3, then items will be 0 and 3.
  final num step;

  /// indicates the color of fab used for increment and decrement
  Color color;

  /// text syle
  TextStyle textStyle;

  final double buttonSize;

  void _incrementCounter() {
    if (selectedValue + step <= maxValue) {
      onChanged((selectedValue + step));
    }
  }

  void _decrementCounter() {
    if (selectedValue - step >= minValue) {
      onChanged((selectedValue - step));
    }
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    color = color ?? themeData.accentColor;
    textStyle = textStyle ??
        new TextStyle(
          fontSize: 15.0,
        );

    return new Container(
      decoration: BoxDecoration(
        border: Border.all(),
        borderRadius: BorderRadius.circular(7.0),
      ),
//      padding: new EdgeInsets.all(4.0),
      child: new Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          new SizedBox(
            width: buttonSize,
            height: buttonSize,
            child: InkWell(
              onTap: _decrementCounter,
              child: Container(
                child: Transform.translate(
                  offset: Offset(0, 0),
                  child: SvgPicture.string(
                    '<svg viewBox="2.3 7.6 10.4 1.0" ><path transform="translate(-2.68, -5.18)" d="M 15.0043830871582 12.73828125 C 11.22024536132813 12.76181602478027 9.779071807861328 12.79181480407715 5.399797439575195 12.73828125 C 5.178778171539307 12.73828125 4.999606132507324 12.91745185852051 4.999606132507324 13.13847160339355 C 4.995609760284424 13.24370193481445 5.037361145019531 13.34551048278809 5.114090442657471 13.41763687133789 C 5.190820217132568 13.4897632598877 5.295014381408691 13.52514457702637 5.399797439575195 13.51465225219727 C 9.780284881591797 13.5302791595459 10.60511016845703 13.50058364868164 15.0043830871582 13.53866386413574 C 15.22540283203125 13.53866386413574 15.40457248687744 13.3594913482666 15.40457248687744 13.13847160339355 C 15.40457248687744 12.91745185852051 15.22540283203125 12.73828125 15.0043830871582 12.73828125 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>',
                    allowDrawingOutsideViewBox: true,
                  ),
                ),
                padding: const EdgeInsets.all(7.0),
//                decoration: BoxDecoration(
//                  border: Border.all(),
//                ),
//                color: color,
              ),
            ),
          ),
          new Container(
            color: Hexcolor("#EDEDED"),
            padding: EdgeInsets.fromLTRB(7, 4, 7, 4),
            child: new Text(
                '${num.parse((selectedValue).toStringAsFixed(decimalPlaces))}',
                style: textStyle),
          ),
          new SizedBox(
            width: buttonSize,
            height: buttonSize,
            child: InkWell(
              onTap: _incrementCounter,
              child: Container(
                child: Transform.translate(
                  offset: Offset(0, 0),
                  child: SvgPicture.string(
                    '<svg viewBox="2.3 2.8 10.4 10.4" ><path transform="translate(-2.73, -2.25)" d="M 15.0043830871582 9.802292823791504 L 10.60228157043457 9.802292823791504 L 10.60228157043457 5.400191307067871 C 10.60228157043457 5.179171562194824 10.42311000823975 5 10.20209121704102 5 C 9.981071472167969 5 9.801899909973145 5.179171562194824 9.801899909973145 5.400191307067871 L 9.801899909973145 9.802292823791504 L 5.399797439575195 9.802292823791504 C 5.178778171539307 9.802292823791504 4.999606132507324 9.981464385986328 4.999606132507324 10.20248413085938 C 4.995609760284424 10.30771446228027 5.037361145019531 10.40952301025391 5.114090442657471 10.48164844512939 C 5.190820217132568 10.5537748336792 5.295014381408691 10.58915615081787 5.399797439575195 10.57866382598877 L 9.801899909973145 10.57866382598877 L 9.801899909973145 15.0047779083252 C 9.801899909973145 15.22579574584961 9.981071472167969 15.40496826171875 10.20209121704102 15.40496826171875 C 10.42311000823975 15.40496826171875 10.60228157043457 15.22579574584961 10.60228157043457 15.0047779083252 L 10.60228157043457 10.60267543792725 L 15.0043830871582 10.60267543792725 C 15.22540283203125 10.60267543792725 15.40457248687744 10.42350292205811 15.40457248687744 10.20248413085938 C 15.40457248687744 9.981464385986328 15.22540283203125 9.802292823791504 15.0043830871582 9.802292823791504 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>',
                    allowDrawingOutsideViewBox: true,
                  ),
                ),
                padding: const EdgeInsets.all(7.0),
//                decoration: BoxDecoration(
//                  border: Border.all(),
//                ),
//                color: color,
              ),
            ),
//            FloatingActionButton(
//              onPressed: _decrementCounter,
//              elevation: 2,
//              tooltip: 'Decrement',
//              child: Icon(Icons.remove),
//              backgroundColor: color,
//            ),
          ),
        ],
      ),
    );
  }
}

class qCounter extends StatefulWidget {
  @override
  _qCounter createState() => _qCounter();
}

class _qCounter extends State<qCounter> {
  num _counter = 0;
  num _defaultValue = 0;

  @override
  Widget build(BuildContext context) {
    return Counter(
      initialValue: _defaultValue,
      minValue: 0,
      maxValue: 10,
      step: 1,
      decimalPlaces: 0,
      color: Colors.black,
      buttonSize: 25,
      onChanged: (value) {
        setState(() {
          _defaultValue = value;
          _counter = value;
        });
      },
    );
  }
}

//orderHistoryCard - Card displayed in the profile section
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
            //Title
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

            //Order Details
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

            //Order Status
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