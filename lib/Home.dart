import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
 var num1=0,num2=0,sum=0;
 final TextEditingController t1= new TextEditingController(text: "0");
 final TextEditingController t2= new TextEditingController(text: "0");
 void addition(){
   setState(() {
     num1= int.parse(t1.text);
     num2= int.parse(t2.text);
     sum = num1 + num2;
   });
 }
 void subtraction(){
   setState(() {
     num1= int.parse(t1.text);
     num2= int.parse(t2.text);
     sum = num1 - num2;
   });
 }

 void multiplication(){
   setState(() {
     num1= int.parse(t1.text);
     num2= int.parse(t2.text);
     sum = num1 * num2;
   });
 }
 
 void division(){
   setState(() {
     num1= int.parse(t1.text);
     num2= int.parse(t2.text);
     sum = num1 ~/num2;
   });
 }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "CALCULATOR",
        home: Scaffold(
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(70.0),
              child: AppBar(
                centerTitle: true,
                backgroundColor: Colors.red,
                title: Text(
                  "CALCULATOR",
                  style: TextStyle(
                    fontSize: 25.0,
                  ),
                ),
              ),
            ),
            body: Container(
              padding: const EdgeInsets.all(40.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "OUTPUT: $sum",
                    style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurpleAccent),
                  ),
                  new TextField(
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(hintText:"enter number 1"),
                    controller: t1,
                  ),
                  new TextField(
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(hintText:"enter number 1"),
                    controller: t2,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      MaterialButton(
                          splashColor: Colors.orangeAccent,
                          color: Colors.greenAccent,
                          child: Text("+", style: TextStyle(fontSize: 30.0)),
                          onPressed: addition),
                      MaterialButton(
                          splashColor: Colors.blueAccent,
                          color: Colors.greenAccent,
                          child: Text("-", style: TextStyle(fontSize: 30.0)),
                          onPressed: subtraction),
                      //RaisedButton(child: new Text("divide"),onPressed:(){}),
                      //RaisedButton(child: new Text("Multiply"),onPressed:(){}),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      //RaisedButton(child: new Text("Add"),onPressed:(){}),
                      // RaisedButton(child: new Text("subtract"),onPressed:(){}),
                      MaterialButton(
                          splashColor: Colors.greenAccent,
                          color: Colors.greenAccent,
                          child:
                              new Text("/", style: TextStyle(fontSize: 30.0)),
                          onPressed: division),
                      MaterialButton(
                          splashColor: Colors.redAccent,
                          color: Colors.greenAccent,
                          child:
                              new Text("*", style: TextStyle(fontSize: 30.0)),
                          onPressed: multiplication),
                    ],
                  )
                ],
              ),
            )));
  }
}
