import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter custom clipper example"),
      ),
      body: ListView(
        padding: EdgeInsets.all(20.0),
        children: <Widget>[
          ClipPath(
            clipper: DiagonalPathClipperOne(),
            child: Container(
              height: 120,
              color: Colors.red,
              child: Center(child: Text("DiagonalPathClipper()")),
            ),
          ),
          SizedBox(height: 10.0,),
          ClipPath(
            clipper: DiagonalPathClipperTwo(),
            child: Container(
              height: 120,
              color: Colors.pink,
              child: Center(child: Text("DiagonalPathClipper()")),
            ),
          ),
          SizedBox(height: 10.0,),
          ClipPath(
            clipper: WaveClipperOne(),
            child: Container(
              height: 120,
              color: Colors.deepPurple,
              child: Center(child: Text("WaveClipperOne()")),
            ),
          ),
          SizedBox(height: 10.0,),
          ClipPath(
            clipper: WaveClipperOne(reverse: true),
            child: Container(
              height: 120,
              color: Colors.deepPurple,
              child: Center(child: Text("WaveClipperOne(reverse: true)")),
            ),
          ),
          SizedBox(height: 10.0,),
          ClipPath(
            clipper: WaveClipperTwo(),
            child: Container(
              height: 120,
              color: Colors.orange,
              child: Center(child: Text("WaveClipperTwo()")),
            ),
          ),
          SizedBox(height: 10.0,),
          ClipPath(
            clipper: WaveClipperTwo(reverse: true),
            child: Container(
              height: 120,
              color: Colors.orange,
              child: Center(child: Text("WaveClipperTwo(reverse: true)")),
            ),
          ),
          SizedBox(height: 10.0,),
          ClipPath(
            clipper: RoundedDiagonalPathClipper(),
            child: Container(
              height: 320,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(50.0)),
                color: Colors.orange,
              ),
              child: Center(child: Text("RoundedDiagonalPathClipper()")),
            ),
          ),
          SizedBox(height: 10.0,),
          ClipOval(
            clipper: OvalTopBorderClipper(),
            child: Container(
              height: 120,
              color: Colors.yellow,
              child: Center(child: Text("OvalTopBorderClipper()")),
            ),
          ),
        ],
      ),
    );
  }
}