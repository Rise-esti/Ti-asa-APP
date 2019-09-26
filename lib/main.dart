import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

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
        color: Colors.white,
        // height:  MediaQuery.of(context).size.height / 2,
        // width: 4 * MediaQuery.of(context).size.width / 5,
        margin: EdgeInsets.all(10),

        child: new Center(
          child: new Card(
            color: Colors.teal,
            elevation: 15,
            child: new Container(
              color: Colors.white,
              height: 350,
              width: 300,
              margin: EdgeInsets.only(top: 30),
              padding: EdgeInsets.only(top: 20),
              child:new Column(
                children: <Widget>[
                  new Row(
                    children: <Widget>[
                      Container(
                        height: 40,
                        width: 40,
                        margin: EdgeInsets.only(left: 35),
                        child: new Image.asset(
                        'img/logo.png',
                        // fit: BoxFit.cover,
                        ),
                      ),
                      Text( " Se Connecter ",
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 25,
                        fontWeight: FontWeight.bold )
                      ), 

                    ],
                  ),
                  Form(
                    child: new Column(
                      children: <Widget>[
                        new Container(
                            margin: EdgeInsets.only(top: 20, left: 20),
                            child: TextField(
                              decoration: InputDecoration(
                                labelText: 'Entrer votre addresse mail',
                              ),
                              keyboardType: TextInputType.emailAddress,
                            ),
                        ),
                        
                      ],
                    ),
                  )

                 
                  
                  
                ],

              ) 
            
            ),
          )
        ),
          // right: MediaQuery.of(context).size.width / 10, left: MediaQuery.of(context).size.width / 10
        

      ),

    );
  }
  
}