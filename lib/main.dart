import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import 'package:profilescreen/bottom_container.dart';
import 'package:profilescreen/profile_data.dart';
import 'package:provider/provider.dart';
import 'package:provider/provider.dart';
import 'arrowCardButton.dart';
import 'orderHistoryCard.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ProfileData(),
      child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primaryColor: Colors.black,
            visualDensity: VisualDensity.adaptivePlatformDensity,
            textTheme:
                Theme.of(context).textTheme.apply(fontFamily: 'OpenSans'),
          ),
          home: ProfileScreen()),
    );
  }
}

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    String username = Provider.of<ProfileData>(context, listen: false).username;
    String email = Provider.of<ProfileData>(context, listen: false).email;
    File ImageFile = Provider.of<ProfileData>(context, listen: false).ImageFile;
    print(ImageFile);
    return Scaffold(
      backgroundColor: const Color(0xFFEDEDED),
      appBar: AppBar(),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: 3, // this will be set when a new tab is tapped
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            title: new Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.search),
            title: new Text('Search'),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), title: Text('Cart')),
          BottomNavigationBarItem(
              icon: Icon(Icons.person), title: Text('Profile')),
        ],
      ),
      body: Center(
        child: Stack(
          children: [
            SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(18.0),
                      child: Row(
                        children: <Widget>[
                          Flexible(
                            flex:3,
                            child: Container(
                              child: (ImageFile == null)
                                  ? Icon(
                                Icons.account_circle,
                                size: 90,
                              )
                                  : Image.file(
                                ImageFile,
                                height: 150,
                                width: 100,
                              ),
                            ),
                          ),
                          Flexible(
                            flex:5,
                            child: Container(
                              child: Column(
//                              direction: Axis.vertical,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    '$username',
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold, fontSize: 20),
                                  ),
                                  Text('000000000'),
                                  Text(
                                    '$email',
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Flexible(
                            flex:2,
                            child: Container(
//                            color: Colors.red,
//                            alignment: Alignment.topCenter,
                              child: Text('Edit Profile'),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        new arrowCard(
                          cardTitle: 'My Account',
                          cardItems:
                          'Manage Addresses, Payment Method, My Favourites',
                        ),
                        new arrowCard(
                          cardTitle: 'Support Center',
                          cardItems: 'Help, Send Feedback, Rate us, Report, FAQ',
                        ),
                        new arrowCard(
                          cardTitle: 'About',
                          cardItems: 'Privacy Policy, Terms of service, Licenses',
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.all(18.0),
                      child: Row(
                        children: <Widget>[
                          Text('Order History'),
                        ],
                      ),
                    ),
                    Column(
                      children: <Widget>[
                        orderHistoryCard(),
                        orderHistoryCard(),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
