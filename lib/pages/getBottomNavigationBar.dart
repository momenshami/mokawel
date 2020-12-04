import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GetBottomNavigationBar extends StatefulWidget {
  @override
  _GetBottomNavigationBarState createState() => _GetBottomNavigationBarState();
}

class _GetBottomNavigationBarState extends State<GetBottomNavigationBar> {
  int pageIndex = 0;

  Color color = Colors.yellow;

  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(4),
        child: getBottomNavigationBar());
  }

  Widget getBottomNavigationBar() {
    List buttomItems = [
      pageIndex == 0
          ? "assets/images/home_active_icon.svg"
          : "assets/images/home_icon.svg",
      pageIndex == 1
          ? "assets/images/search_active_icon.svg"
          : "assets/images/search_icon.svg",
      pageIndex == 2 ? "assets/images/list.svg" : "assets/images/list.svg",
      pageIndex == 3
          ? "assets/images/notification_bell_icon.svg"
          : "assets/images/notification_bell_icon.svg",
      pageIndex == 4
          ? "assets/images/account_active_icon.svg"
          : "assets/images/account_icon.svg",
    ];
    return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,

        items: [
      BottomNavigationBarItem(
          icon: InkWell(
            onTap: () {
              print("You are in the menu");
              setState(() {
                pageIndex = 0;
                color = Colors.yellow;
              });
            },
            child: SvgPicture.asset(
              buttomItems[0],
              width: 30,
              color: color,
              semanticsLabel: "List",
            ),
          ),
          title: Text(
            "القائمة",
            style: TextStyle(color: Colors.black),
          )),
      BottomNavigationBarItem(
          icon: InkWell(
            onTap: () {
              print("You are in the menu");
              setState(() {
                pageIndex = 1;
                color = Colors.orange;
              });
            },
            child: SvgPicture.asset(
              buttomItems[1],
              width: 30,
              color: color,
              semanticsLabel: "List",
            ),
          ),
          title: Text(
            "بحث",
            style: TextStyle(color: Colors.black),
          )),

      BottomNavigationBarItem(
          icon: InkWell(
            onTap: () {
              print("You are in the menu");
              setState(() {
                pageIndex = 2;
                color = Colors.orange;
              });
            },
            child: SvgPicture.asset(
              buttomItems[2],
              width: 30,
              color: color,
              semanticsLabel: "List",
            ),
          ),
          title: Text("طلباتي", style: TextStyle(color: Colors.black))),

      BottomNavigationBarItem(
          icon: InkWell(
            onTap: () {
              print("You are in the menu");
              setState(() {
                pageIndex = 3;
                color = Colors.orange;
              });
            },
            child: SvgPicture.asset(
              buttomItems[3],
              width: 30,
              color: color,
              semanticsLabel: "List",
            ),
          ),
          title: Text("الاشعارت", style: TextStyle(color: Colors.black))),
      BottomNavigationBarItem(
          icon: InkWell(
            onTap: () {
              print("You are in the menu");
              setState(() {
                pageIndex = 4;
                color = Colors.orange;
              });
            },
            child: SvgPicture.asset(
              buttomItems[4],
              width: 30,
              color: color,
              semanticsLabel: "List",
            ),
          ),
          title: Text("الملف الشخصي", style: TextStyle(color: Colors.black))),
    ]);
  }
}
