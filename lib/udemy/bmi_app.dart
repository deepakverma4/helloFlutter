import 'package:flutter/material.dart';

class BmiApp extends StatefulWidget {
  @override
  _BmiAppState createState() => new _BmiAppState();
}

class _BmiAppState extends State<BmiApp> {
  final TextEditingController _ageController =  new TextEditingController();
  final TextEditingController _heightController =  new TextEditingController();
  final TextEditingController _weightController =  new TextEditingController();
 
 double inches = 0.0;
 double result = 0.0;
String _resultString ="";
String _finalResult = "";
  _onSubmit(){

    setState(() {
         int age = int.parse(_ageController.text);
         double height = double.parse(_heightController.text);
          double weight = double.parse(_weightController.text);
          inches = height*12;
          if((_ageController.text.isNotEmpty || age>0) && (_heightController.text.isNotEmpty || inches > 0)
          &&(_weightController.text.isNotEmpty || weight>0)){
            result = weight/(inches*inches)*703;

            if(double.parse(result.toStringAsFixed(1))<18.5){
              _resultString = "Underweight";
            }else if(double.parse(result.toStringAsFixed(1))>=18.5 && result< 25){
              _resultString = "Great Shape!";
            }else if(double.parse(result.toStringAsFixed(1))>=25.0 && result<30){
              _resultString = "Overweight";
            }else if (double.parse(result.toStringAsFixed(1)) >= 30.0) {
              _resultString = "Obese";
           }else{
              result = 0.0;
            }
          }
        });
        _finalResult = "Your BMI is : ${result.toStringAsFixed(1)}";
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Know Your BMI"),
        centerTitle: true,
        backgroundColor: Colors.pinkAccent,
      ),
      body: new ListView(
        children: <Widget>[
          new Image.asset("images/bmilogo.png", height: 100.0, width: 100.0,),
         

          new Container(
            padding: const EdgeInsets.all(8.0),
            color: Colors.white70,
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new TextField(
                  decoration: new InputDecoration(hintText: "Enter Your Age", labelText: "Age", icon: new Icon(Icons.person),
                ),
                controller: _ageController,
                keyboardType: TextInputType.number,
                ),
                new TextField(
                  decoration: new InputDecoration(hintText: "Enter Your Height", labelText: "Height in feet", icon: new Icon(Icons.multiline_chart),
                ),
                controller: _heightController,
                keyboardType: TextInputType.number,
                ),
                new TextField(
                  decoration: new InputDecoration(hintText: "Enter Your Weight", labelText: "Weight in lbs", icon: new Icon(Icons.view_headline),
                ),
                controller: _weightController,
                keyboardType: TextInputType.number,
                ),
                
              new Container(
                padding: const EdgeInsets.only(top: 20.0),
                child: new MaterialButton(
                  onPressed: _onSubmit,
                  color: Colors.pinkAccent,
                  textColor: Colors.white,
                  child: new Text("Submit", style: new TextStyle(fontSize: 16.0),),
                  splashColor: Colors.pink,
                ),
              ),
              new Padding(padding: const EdgeInsets.only(top: 12.0),),
              new Text(_finalResult, style: new TextStyle(fontSize: 20.0, color: Colors.blueAccent, fontWeight: FontWeight.bold ),),
              new Padding(padding: const EdgeInsets.only(top: 12.0),),
               new Text(_resultString, style: new TextStyle(fontSize: 18.0, color: Colors.pinkAccent),),
                
              ],
            ),

            
          )
        ],
      ),
    );
  }
}