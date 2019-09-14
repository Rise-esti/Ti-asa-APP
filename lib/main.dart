import 'package:flutter/material.dart';

void main(){
  runApp(new MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    //  »»»»»»»»»TODO: implement build
    return new MaterialApp(
      title: 'Application ti-asa',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      
      ),
      debugShowCheckedModeBanner: false,
      home: new Home(),
    );
  }
}

class Home extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
    return _Home();
  }
}

class _Home extends State<Home>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text(" Bienvenue sur Ti-asa"),
        centerTitle: true,
        backgroundColor: Colors.teal,  //Color(0xFFf05f40),
        leading: new Icon(
          Icons.home
        ),
        actions: <Widget>[
          new Icon(Icons.help),
        ],
        elevation: 50,
      ),
      backgroundColor: Colors.white,
      body: new Container(
        color: Colors.teal,
        height:  MediaQuery.of(context).size.height / 2,
        width: 4 * MediaQuery.of(context).size.width / 5,
        margin: EdgeInsets.only(bottom: MediaQuery.of(context).size.height / 4, top: MediaQuery.of(context).size.height / 4  ,
          right: MediaQuery.of(context).size.width / 10, left: MediaQuery.of(context).size.width / 10
        ),

      ),

    );
  }
  
}