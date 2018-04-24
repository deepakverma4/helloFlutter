import 'package:flutter/material.dart';

void main(){
   runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "My App",
      home: new HomePage(),
      theme: new ThemeData(
        primarySwatch: Colors.cyan,
        brightness: Brightness.dark
      ),
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
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: <Widget>[
            
            new Text(myText, style: new TextStyle(
              fontSize: 20.0
              
            ))
          ],
        ),
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("StateFul Demo", style: new TextStyle(
          color: Colors.white
        ),)
      ),
      body: _bodyWidget(),
      floatingActionButton: new FloatingActionButton(
        child: new Icon(Icons.add),
        onPressed: _onButtonPress,
      ),
    );
  }
}