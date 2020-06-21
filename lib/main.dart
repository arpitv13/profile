import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:profilescreen/bottom_container.dart';
import 'package:profilescreen/profile_data.dart';
import 'package:provider/provider.dart';
import 'userProfile.dart';
import 'userCart.dart';

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
          title: 'Batliwale Profile',
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
  int _currentIndex = 0;
  final _pageOptions = [
    userProfile(),
    userProfile(),
    userCart(),
    userProfile(),
  ];
  @override
  Widget build(BuildContext context) {
//    print(ImageFile);
    return Scaffold(
      backgroundColor: const Color(0xFFEDEDED),
      appBar: AppBar(),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: _currentIndex, // this will be set when a new tab is tapped
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
        onTap: (int index){
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      body: _pageOptions[_currentIndex],
    );
  }
}
