import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  void answer() {
    setState(() {
      quind = quind + 1;
    });
    print('answerex');
    print(quind);
  }

  var quind = 0;
  Widget build(BuildContext contex) {
    var qu = [
      'Color ?',
      'animal ?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('my first app'),
        ),
        body: Column(
          children: [
            Text(qu[quind],textAlign: TextAlign.right,),
            RaisedButton(
              child: Text('Answer1'),
              onPressed: answer,
            ),
            RaisedButton(
              child: Text('Answer2', textAlign: TextAlign.center,),
              onPressed: () => print('answer2'),
              textColor: Color(0xffff0000),
              color: Color(0xff0000ff),
            ),
            RaisedButton(
              child: Text('Answer3'),
              onPressed: null,
            ),
            RaisedButton(
              child: Text('Answer4'),
              onPressed: null,
            ),
          ], textDirection: TextDirection.rtl,
        ),
      ),
    );
  }
}
