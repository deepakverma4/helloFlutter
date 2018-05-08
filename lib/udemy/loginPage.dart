import "package:flutter/material.dart";

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
final TextEditingController _userController = new TextEditingController();
final TextEditingController _passwordController = new TextEditingController();

var username = "",password;

_handleLogin(){
  setState(() {
      username = _userController.text;
      password = _passwordController.text;
    });
}

_handleClear(){
  setState(() {
      _userController.clear();
      _passwordController.clear();
    });
}

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Login Page"),
        centerTitle: true,
        backgroundColor: Colors.teal
      ),
      backgroundColor: Colors.blueGrey,
      body: new ListView(
        children: <Widget>[
          new Image.asset('images/face.png',height: 100.0, width: 100.0,),
          new Container(
            padding: const EdgeInsets.all(5.0),
            height: 180.0,
            width: 320.0,
            color: Colors.white,
            child: new Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: <Widget>[
               new TextField(
                 controller: _userController,
            decoration: new InputDecoration(
            labelText: "Username",
            hintText: "Enter your username",
            icon: new Icon(Icons.person)
          ),
        onSubmitted: _handleClear(),
          
          ),
          new TextField(
                 controller: _passwordController,
            decoration: new InputDecoration(
            labelText: "Password",
            hintText: "Enter your Password",
            icon: new Icon(Icons.person)
          ),
        obscureText: true,
        onSubmitted: _handleClear(),
            ),
          new Center(
            child: new Row(
            
             mainAxisAlignment: MainAxisAlignment.center,
             children: <Widget>[
              
               new Container(
                 margin: const EdgeInsets.only(right: 38.0, top: 10.0),
             child: 
                   new RaisedButton(
                   textColor: Colors.white,
                   onPressed: _handleLogin,
              color: Colors.blueAccent,
              child: new Text("Login", style: new TextStyle(color: Colors.white, fontSize: 15.0)
             )            
            ),
                 
               ),
              
               new Container(
                 margin: const EdgeInsets.only( top: 10.0),
                 child: new RaisedButton(
               textColor: Colors.white,
               onPressed: _handleClear,
              color: Colors.redAccent,
              child: new Text("Clear", style: new TextStyle(color: Colors.white, fontSize: 15.0)
             )            
            )
               )
            
             ],

          )
          )
             ],
              
            ),
          ),
        new Padding(
          padding: const EdgeInsets.all(10.0),
        ),
          new Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text(  "Welcome $username",
              style: new TextStyle(color: Colors.white,
              fontSize: 18.0),)
            ],
          )

        ],

      ),
    );
  }
}