import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ListRecommend extends StatefulWidget {
  @override
  _ListRecommendState createState() => _ListRecommendState();
}

class _ListRecommendState extends State<ListRecommend> {
  dynamic data;
  var listOfWidgets = [];
  var listRecomend = [];

  void getData() {
    Firestore.instance
        .collection("recommend")
        .get()
        .then((QuerySnapshot snapshot) {
      snapshot.docs.forEach((f) => {
            // print(f.data())
            listOfWidgets.add(f.data())
          });
    }).then((value) => {
              // print(listOfWidgets)
              this.setState(() {
                listRecomend = listOfWidgets;
              })
            });
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // child: ListView.builder(
      //   itemCount: listRecomend.length == 0 ? 0 : listRecomend.length,
      //   shrinkWrap: true,
      //   itemBuilder: (context, index) {
      //     return ListTile(
      //       title: Text('${listRecomend[index]['firstTran']}'),
      //       subtitle:Text('${listRecomend[index]['secondTran']}')
      //     );
      //   },
      // ),

      child: ListView.builder(
        itemCount: listRecomend.length == 0 ? 0 : listRecomend.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(0.0)),
            ),
            margin: EdgeInsets.only(left: 8.0, right: 8.0, top: 0.5),
            child: Container(
              height: 80.0,
              padding: EdgeInsets.only(left: 16.0, top: 16.0, bottom: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Text(
                          '${listRecomend[index]['firstTran']}',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                          maxLines: 5,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          '${listRecomend[index]['secondTran']}',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                          maxLines: 5,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
