import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mokawel/pages/services.dart';
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(8),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            SizedBox(height: 10),
            Container(
              height: 280,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white38),
              child: Column(
                children: [
                  Center(
                      child: Container(
                          height: 200,
                          child: SvgPicture.asset("assets/svgPicture/logo.svg",
                              width: 150, semanticsLabel: "List"))),
                  SizedBox(height: 10),
                  Center(
                      child: Text("مرحبا بكم في شركة الخليج العصرية",
                          style: TextStyle(color: Colors.black, fontSize: 25))),
                ],
              ),
            ),
            SizedBox(height: 50),
            Container(
              height: 150,
              width: MediaQuery.of(context).size.width,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Services()),
                      );
                    },
                    child: CustomContainer(
                        color: Colors.blueGrey, name: "خدماتنا"),
                  ),
                  SizedBox(width: 5),
                  CustomContainer(color: Colors.blueGrey, name: "العروض"),
                  SizedBox(width: 5),
                ],
              ),
            ),
            SizedBox(
              height: 8,
            ),
            SizedBox(height: 8),
          ],
        ));
  }
}

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    Key key,
    @required this.color,
    @required this.name,
  }) : super(key: key);

  final Color color;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width / 3 - 10,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: color,
        ),
        child: Center(child: Text(name)));
  }
}
