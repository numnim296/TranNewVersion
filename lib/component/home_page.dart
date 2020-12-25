import 'package:flutter/material.dart';
import 'list_recommend.dart';
import 'translate.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Translate')),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
            Translate(),
            ListRecommend()
          ]),
        ),
      ),
    );
  }
}
