import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

//import 'home_page.dart';

class Services extends StatefulWidget {
  @override
  _ServicesState createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(235, 235, 235, 224),
      appBar: AppBar(
        title: Text(" خدماتنا"),
        backgroundColor: Colors.teal,
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
//            Expanded(child: Container(
//              child: Text("اختر خدمة"),
//            ),),
            Container(
                height: 200,
//              width: MediaQuery.of(context).size.width,
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      CustomServiceContainer(
                          color: Colors.white38,
                          path: "assets/svgPicture/parquet.svg",
                          name: "بناء وتشييد"),
                      SizedBox(width: 10),
                      CustomServiceContainer(
                          color: Colors.white38,
                          path: "assets/svgPicture/carpenter.svg",
                          name: "النجارة")
                    ])),
            SizedBox(height: 10),
            Container(
                height: 200,
//              width: MediaQuery.of(context).size.width,
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      CustomServiceContainer(
                          color: Colors.white38,
                          path: "assets/svgPicture/electric-factory.svg",
                          name: "شركات الكهرباء"),
                      SizedBox(width: 10),
                      CustomServiceContainer(
                          color: Colors.white38,
                          path: "assets/svgPicture/home_devices.svg",
                          name: "الأجهزة المنزلية")
                    ])),
            Container(
                height: 200,
//              width: MediaQuery.of(context).size.width,
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      CustomServiceContainer(
                          color: Colors.white38,
                          path: "assets/svgPicture/furniture.svg",
                          name: "الأثاث"),
                      SizedBox(width: 10),
                      CustomServiceContainer(
                          color: Colors.orange,
                          path: "assets/svgPicture/moneysave.svg",
                          name: "التمويل")
                    ]))
          ],
        ),
      ),
    );
  }
}

class CustomServiceContainer extends StatelessWidget {
  const CustomServiceContainer({
    Key key,
    @required this.color,
    @required this.name,
    @required this.path,
  }) : super(key: key);

  final Color color;
  final String name;
  final String path;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 2 - 15,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white38,
      ),
      child: Center(
        child: Container(
          height: 220,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(path,
                  width: 80, semanticsLabel: name, color: Colors.orange),
              Center(
                child: Text(name),
              )
            ],
          ),
        ),
      ),
    );
  }
}
