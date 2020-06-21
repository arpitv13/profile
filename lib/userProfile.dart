import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'arrowCardButton.dart';
import 'orderHistoryCard.dart';
import 'package:provider/provider.dart';
import 'package:profilescreen/profile_data.dart';

class userProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    File ImageFile = Provider.of<ProfileData>(context, listen: false).ImageFile;
    String username = Provider.of<ProfileData>(context, listen: false).username;
    String email = Provider.of<ProfileData>(context, listen: false).email;
    return Scaffold(
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
                          Container(
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
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                Container(
                                  child: Text('Edit Profile'),
                                ),
                              ],
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