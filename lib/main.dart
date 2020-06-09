import 'dart:io';

import 'package:flutter/material.dart';
import 'package:profilescreen/bottom_container.dart';
import 'package:profilescreen/profile_data.dart';
import 'package:provider/provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
create: (context)=>ProfileData(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primaryColor: Colors.black,
          // This makes the visual density adapt to the platform that you run
          // the app on. For desktop platforms, the controls will be smaller and
          // closer together (more dense) than on mobile platforms.
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: ProfileScreen()
      ),
    );}}
    class ProfileScreen extends StatefulWidget {
      @override
      _ProfileScreenState createState() => _ProfileScreenState();
    }

    class _ProfileScreenState extends State<ProfileScreen> {


      @override

      Widget build(BuildContext context) {
        String username=Provider.of<ProfileData>(context,listen: false).username;
        String email=Provider.of<ProfileData>(context,listen: false).email;
        File ImageFile=Provider.of<ProfileData>(context,listen: false).ImageFile;
print(ImageFile);
        return Scaffold(
backgroundColor: Colors.white,
          appBar: AppBar(),
          body: Builder(
builder: (context)=> Padding(
  padding: const EdgeInsets.all(8.0),
  child:   Row(

    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [

                  Column(
mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child:(username==null)?   Text('SANSKAR GUPTA',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),):

                        Text(username,style:  TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),

                      ),



SizedBox(height: 10,),
                      Align(

                          alignment: Alignment.centerLeft,

                          child:(email==null) ?Text('guptasanskar2001@gmail.com',style: TextStyle(color: Colors.grey.shade700)):

                          Text(email,style: TextStyle(color: Colors.grey.shade700)))

                    ],



                  ),

                  Column(

                    children: [(ImageFile==null)?Icon(Icons.account_circle,size: 50,):Image.file(ImageFile,height: 100,
                    width: 150,),

                      IconButton(icon:Icon(Icons.edit),color: Colors.black,onPressed: (){

                        Navigator.push(context, MaterialPageRoute(builder: (context)=>BottomContainer()));



                      },),],



                  )





                ],



              ),
),
          ),


        );
      }
    }
