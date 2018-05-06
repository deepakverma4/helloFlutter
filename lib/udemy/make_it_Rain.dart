import "package:flutter/material.dart";

class MakeItRain extends StatefulWidget{
  @override
  _MakeItRainState createState()=> new _MakeItRainState(); 
}

class _MakeItRainState extends State<MakeItRain>{

  var _moneyCounter = 0;
  _makeRain(){
    setState(() {
          _moneyCounter = _moneyCounter + 500;
        });
  }
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Make It Rain"),
        backgroundColor: Colors.green,
      ),
      
        body: new Container(
          
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Center(

                 child: new Text(_moneyCounter<50000? "Get Rich!": "Get Richer!", style: new TextStyle(
                color: Colors.grey,
                fontSize: 20.0
              ),),),

              new Expanded(child: new Center(
                 child: new Text('\$$_moneyCounter', style: new TextStyle(
                color: _moneyCounter<20000? Colors.greenAccent: Colors.blueAccent,
                fontSize: 42.0
              ))
              )),

              new Expanded(child: new Center(
                child: new FlatButton(
                color: Colors.green,
                textColor: Colors.white70,
                onPressed: _makeRain,
                child: new Text("Make It Rain!"),
              )
              ) )
              
             
            ],
          ),
        
          
        ),
      
    );
  }
}

