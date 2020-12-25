import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class Translate extends StatefulWidget {
  @override
  _TranslateState createState() => _TranslateState();
}

class _TranslateState extends State<Translate> {
  var _currentTranslatedTo = "";
  final _textTranController = TextEditingController();
  String _firstLanguage = "อังกฤษ";
  String _secondLanguage = "ไทย";
  String _firstL = "en";
  String _secondL = "th";


  void _translate(String text) async {
    var response = await http.get(
        'https://translation.googleapis.com/language/translate/v2?key=AIzaSyCl0JfWdDiBZO30bbgfaGcJ5ys4gX_zqZI&q=' +
            text +
            '&target='+_secondL+'&source='+_firstL);
    if (response.statusCode == 200) {
      // print("textttttt => " + text);
      var _result = json.decode(response.body)['data']['translations'][0]
          ['translatedText'];
      print("result =>>>>>>>>>>>>> " + _result);
      setState(() {
        _currentTranslatedTo = _result;
      });
    } else {
      throw Exception('Failed to load Album');
    }
  }

  void _switchLanguage() {
    String _tmpLanguage = this._firstLanguage;
    String _tmpL = this._firstL;

    setState(() {
      this._firstLanguage = this._secondLanguage;
      this._secondLanguage = _tmpLanguage;
      this._firstL = this._secondL;
      this._secondL = _tmpL;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
      child: Column(
        children: <Widget>[



          Container(
      height: 55.0,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(
            width: 0.5,
            color: Colors.grey[500],
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Material(
              color: Colors.white,
              child: InkWell(
                onTap: () {},
                child: Center(
                  child: Text(
                    this._firstLanguage,
                    style: TextStyle(
                      color: Colors.pink[600],
                      fontSize: 15.0,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Material(
            color: Colors.white,
            child: IconButton(
              icon: Icon(
                Icons.compare_arrows,
                color: Colors.grey[700],
              ),
              onPressed: _switchLanguage,
             
            ),
          ),
          Expanded(
            child: Material(
              color: Colors.white,
              child: InkWell(
                onTap: () {},
                child: Center(
                  child: Text(
                    this._secondLanguage,
                    style: TextStyle(
                      color: Colors.pink[600],
                      fontSize: 15.0,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ),


          Container(
            height: 150.0,
            color: Colors.pink[50],
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                    child: Padding(
                  padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
                  child: TextField(
                    controller: _textTranController,
                    decoration: InputDecoration(
                        border: InputBorder.none, hintText: 'กรอกข้อความ'),
                  ),
                )),
              ],
            ),
          ),
          OutlineButton(
            onPressed: () {
              _translate(_textTranController.text);
            },
            textColor: Colors.pink,
            borderSide: BorderSide(
                color: Colors.pink, width: 1.0, style: BorderStyle.solid),
            child: Text(
              'แปล',
            ),
          ),
          // Text(_currentTranslatedTo),

          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(0.0)),
            ),
            margin: EdgeInsets.only(left: 8.0, right: 8.0, top: 0.5),
            child: Container(
              color: Colors.pink[50],
              height: 80.0,
              padding: EdgeInsets.only(left: 16.0, top: 16.0, bottom: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Flexible(
                    child: Text(_currentTranslatedTo),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}
