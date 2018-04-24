import 'package:flutter/material.dart';

void main(){
   runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "My App",
      home: new HomePage()
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {

String myText = "Hello World!";

 void _onButtonPress(){ 
  setState(() {
    if(myText.startsWith("H")){
      myText = "Welcome to my App";
    }else{
      myText = "Hello World!";
    }
      
    });
} 

  Widget _bodyWidget(){
    return new Container(
      padding: const EdgeInsets.all(8.0),
      child: new Center(
        child: new Column(
          children: <Widget>[
            new Text(myText),
            new RaisedButton(
              child: new Text("Click"),
              onPressed: _onButtonPress,
            )
          ],
        ),
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("StateFul Demo")
      ),
      body: _bodyWidget()
    );
  }
}