import 'package:flutter/material.dart';

class ListRecommend extends StatefulWidget {
  @override
  _ListRecommendState createState() => _ListRecommendState();
}

class _ListRecommendState extends State<ListRecommend> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Card(
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
                        "head in the clouds",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                        maxLines: 5,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        "เพ้อฝัน,ไม่อยู่ในโลกแห่งความเป็นจริง",
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
        ),

        Card(
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
                        "heart in your mouth",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                        maxLines: 5,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        "อาการประหม่า ตื่นเต้น ทำตัวไม่ถูก",
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
        ),

        Card(
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
                        "Bob’s your uncle.",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                        maxLines: 5,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        "ง่ายๆ แค่นั้นเอง, เท่านั้นแหละ, เรียบร้อย",
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
        ),

        Card(
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
                        "a storm in a teacup",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                        maxLines: 5,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        " เรื่องขี้ปะติ๋ว, เรื่องเล็กน้อย",
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
        )

        ,
        Card(
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
                        "After one’s own heart",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                        maxLines: 5,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        "ได้ดังใจ สมใจคิด ถูกใจจริงๆ",
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
        )


      ],
    ));
  }
}
