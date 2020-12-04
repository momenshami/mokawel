import 'package:flutter/material.dart';
import 'package:mokawel/pages/companies.dart';
import 'package:mokawel/pages/home_page.dart';
//import 'package:mokawel/themes/colors.dart';
//import 'package:flutter_svg/flutter_svg.dart';

import 'pages/getBottomNavigationBar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),

    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      appBar: PreferredSize(
//        preferredSize: Size.fromHeight(100.0),
//        child: customAppBar(),
//      ),
      body: SafeArea(child: HomePage(),),
      bottomNavigationBar: GetBottomNavigationBar(),
    );
  }
}

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      shadowColor: Colors.yellow,
      title:Icon(Icons.home,color: Colors.yellow,size: 80,),
//        title: Text("مقاولات",style: TextStyle(color: Colors.black),),
      backgroundColor: Colors.white,
      centerTitle: true,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
        bottom: Radius.circular(15),
      )),
    );
  }
}
