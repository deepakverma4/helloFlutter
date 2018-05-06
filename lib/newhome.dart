import "package:flutter/material.dart";

class Newhome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("New Appbar"),
          backgroundColor: Colors.blueAccent,
          actions: <Widget>[
            new IconButton(icon: new Icon(Icons.account_balance), onPressed: ()=>debugPrint("Icon pressed") ),
            new IconButton(icon: new Icon(Icons.add_a_photo), onPressed: ()=>debugPrint("Icon2 pressed") ),
            new IconButton(icon: new Icon(Icons.add_to_photos), onPressed: ()=>debugPrint("Icon3 pressed") ) 
          ],  
        ),
        backgroundColor: Colors.grey.shade200,
        body: new Container(
          alignment: Alignment.center,
          child: new Column(
           mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
           new Text("Welcome To NEW HOME", style: new TextStyle(color: Colors.black, fontSize: 18.0)),
           new InkWell(
             child: new Text("InkWell"),
             onTap: ()=> debugPrint("Inkwell tapped"),
           )
          ],
          ),
        ),
        bottomNavigationBar: new BottomNavigationBar(items: [
                  new BottomNavigationBarItem(icon: new Icon(Icons.add_location), title: new Text("Location")),
                  new BottomNavigationBarItem(icon: new Icon(Icons.accessible), title: new Text("accessibility")),
                  new BottomNavigationBarItem(icon: new Icon(Icons.album), title: new Text("album")),
        ],onTap: (int i)=>debugPrint("tapped $i Item"),
        ),
        floatingActionButton: new FloatingActionButton(onPressed: ()=> debugPrint("FAB pressed"), tooltip: 'Ging UP', backgroundColor: Colors.blue,
          child: new Icon(Icons.arrow_upward),
        ),
      );
   
  }
}