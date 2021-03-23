import 'package:flutter/material.dart';

void main() {
  runApp(new application());
}

class application extends StatefulWidget {
  @override
  _applicationState createState() => _applicationState();
}

class _applicationState extends State<application> {

  String  ttext = '';

  @override
  void initState() {
    // TODO: implement initState
    ttext = 'Click on this button';
    super.initState();
  }

  void method1 (){
    setState(() {
      ttext = 'The text is being changed';
    });
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Statefull Widget',
      home: new Scaffold(
        body: new Center(
          child: new RaisedButton(onPressed: () {method1();}, child: new Text(ttext),),
        ),
      ),
    );
  }
}




