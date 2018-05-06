import "package:flutter/material.dart";

class Gesture extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Gesture'),
        backgroundColor: Colors.lightBlue,
      ),
      body: new Center(
        child: new CustomButton(),
      ),
    );
  }
}

class CustomButton extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new GestureDetector(
      onTap: (){
        final snackbar = new SnackBar(content: new Text( "My SnackBar"),
        backgroundColor: Theme.of(context).backgroundColor,
      
        );
        Scaffold.of(context).showSnackBar(snackbar);
      },
      child: new Container(
        padding: const EdgeInsets.all(15.0),
        decoration: new BoxDecoration(
          color: Theme.of(context).buttonColor,
          borderRadius: new BorderRadius.circular(55.0)
        ),
        child: new Text("Button"),
      ),
    );
  }
}



