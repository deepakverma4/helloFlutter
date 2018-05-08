import "package:flutter/material.dart";

class WeightX extends StatefulWidget {
  @override
  _WeightXState createState() => new _WeightXState();
}

class _WeightXState extends State<WeightX> {
  final TextEditingController _weightController = new TextEditingController();

  int radioValue = 0;
  double _finalResult = 0.0;
  String _formattedText= "";
  _radioChanged(int value){
   setState(() {
         radioValue = value;

    switch(radioValue){
      case 0: _finalResult = calculateWeight( _weightController.text, 0.06); 
      _formattedText= "Your Wight on Pluto is ${_finalResult.toStringAsFixed(1)}";
      break;
      case 1: _finalResult = calculateWeight( _weightController.text, 0.38); 
      _formattedText= "Your Wight on Pluto is ${_finalResult.toStringAsFixed(1)}";
      break;
      case 2: _finalResult = calculateWeight( _weightController.text, 0.91); 
      _formattedText= "Your Wight on Pluto is ${_finalResult.toStringAsFixed(1)}";
      break;
    }
      });
  }

  double calculateWeight(String weight, double multiplier){
    if(int.parse(weight).toString().isNotEmpty && int.parse(weight) > 0){
      return int.parse(weight)*multiplier;
    }else{
      print("WRONG");
      return int.parse("180")*multiplier;
    }
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Weight On Planet X"),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      backgroundColor:Colors.teal,
      body: new ListView(
        children: <Widget>[
          new Image.asset("images/planet.png", height: 120.0, width: 120.0,),

        new Container(
          margin: const EdgeInsets.all(5.0),
          child: new Column(
            children: <Widget>[
              new TextField(
              decoration: new InputDecoration(
                icon: new Icon(Icons.person), 
                labelText: "Enter your Weight",
                labelStyle: new TextStyle(color: Colors.white),
                 hintText: "In Pounds",
                 hintStyle: new TextStyle(color: Colors.white)
                 ),

              controller: _weightController,
              keyboardType: TextInputType.number,
              style: new TextStyle(color: Colors.white),
              
            ),
            new Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Radio<int>(value: 0,groupValue: radioValue, onChanged: _radioChanged, activeColor: Colors.brown,),
              new Text("Pluto", style: new TextStyle(color: Colors.white, fontSize: 14.0),),
              new Radio<int>(value: 1,groupValue: radioValue, onChanged: _radioChanged,activeColor: Colors.redAccent ),
            new Text("Mars", style: new TextStyle(color: Colors.white, fontSize: 14.0),),
              new Radio<int>(value: 2,groupValue: radioValue, onChanged: _radioChanged, activeColor: Colors.orangeAccent),
              new Text("Venus", style: new TextStyle(color: Colors.white, fontSize: 14.0),)

            ],
          )
            ], 
          ),
          
        ),
        new Center(
          child: new Text(
            _weightController.text.isEmpty ? "Please Enter Your Weight" : "$_formattedText lbs", 
            style: new TextStyle(color: Colors.white, fontSize: 20.0),),
        )
        ],
      ),
    );
  }
}