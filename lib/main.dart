import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:photo_view/photo_view.dart';
void main() => runApp(MyApp());
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  //const MyApp({super.key});

  static const String _title = '409631701_image';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: body(),
      ),
    );
  }
}

class body extends MyApp {
  static const images=[
    "assets/doge.png",
    "assets/doge.png",
    "assets/doge.png",
    "assets/doge.png",
  ];
  var index = 0;
  @override
  Widget build (BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          const SizedBox(height: 150),
          GestureDetector(
            child: Image.asset(images[index]),
            onTap: (){
              final snackBar = SnackBar(
                content: const Text('你按下圖片'),
                duration: Duration(seconds: 3),
                backgroundColor: Colors.blue,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                action: SnackBarAction(
                    label: '關閉',
                    textColor: Colors.white,
                    onPressed: (){}
                ),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
          ),
          const SizedBox(height: 50),
          Container(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: (){
                    index--;
                    return index;
                  },
                  iconSize: 40,
                ),
                const SizedBox(width: 50),
                IconButton(
                  icon: Icon(Icons.arrow_forward),
                  onPressed: (){
                    index++;
                    return index;
                  },
                  iconSize: 40,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
