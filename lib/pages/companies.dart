import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class MyList extends StatefulWidget {
  @override
  _MyListState createState() => _MyListState();
}

class _MyListState extends State<MyList> {
  int index = 0;
  final List<String> names = <String>["sky electric"];
  final List<String> emails = ["sky@gmail.com"];
  final List<String> rates = ["3"];

  var rate;

  TextEditingController companyName = TextEditingController();
  TextEditingController email = TextEditingController();

  void addItemToList() {
    setState(() {
      names.insert(index, companyName.text);
      emails.insert(index, email.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter Tutorial - googleflutter.com'),
        ),
        body: Column(children: <Widget>[
          Padding(
            padding: EdgeInsets.all(20),
            child: TextField(
              controller: companyName,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Contact Name',
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: TextField(
              controller: email,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Email Address',
              ),
            ),
          ),
          RatingBar(
            initialRating: 4,
            minRating: 1,
            direction: Axis.horizontal,
            allowHalfRating: true,
            itemCount: 5,
            itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
            itemBuilder: (context, _) => Icon(
              Icons.star,
              color: Colors.amber,
            ),
            onRatingUpdate: (rating) {
              print(rating);
              rate = rating;
            },
          ),
          // Expanded(
          //     child: ListView.separated(
          //         separatorBuilder: (context, index) => Divider(
          //               color: Colors.orange,
          //             ),
          //         itemCount: names.length,
          //         itemBuilder: (BuildContext context, int index) {
          //           return Container(
          //             decoration: BoxDecoration(
          //               borderRadius: BorderRadius.circular(15),
          //               color: Colors.grey[400],
          //             ),
          //             height: 100,
          //             margin: EdgeInsets.all(2),
          //             child: Column(
          //               children: [
          //                 Center(
          //                   child: Text(
          //                     '${names[index]}    (${emails[index]})',
          //                     style: TextStyle(fontSize: 18),
          //                   ),
          //                 ),
          //                 RatingBar(
          //                   initialRating: 4,
          //                   minRating: 1,
          //                   direction: Axis.horizontal,
          //                   allowHalfRating: true,
          //                   itemCount: 5,
          //                   itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
          //                   itemBuilder: (context, _) => Icon(
          //                     Icons.star,
          //                     color: Colors.amber,
          //                   ),
          //                   onRatingUpdate: (rating) {
          //                     print(rating);
          //                   },
          //                 ),
          //               ],
          //             ),
          //           );
          //         })),
          CustomizedAddButton(
            name: "Add new Company",
            onpressed: () {},
          ),
          SizedBox(
            height: 5,
          )
        ]));
  }
}

class CustomizedAddButton extends StatelessWidget {
  final String name;
  final Function onpressed;

  CustomizedAddButton({@required this.name, @required this.onpressed});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 0,
      child: Text(name),
      onPressed: onpressed,
      constraints: BoxConstraints.tightFor(height: 80, width: 150),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}
