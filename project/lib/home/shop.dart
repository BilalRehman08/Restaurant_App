import 'package:flutter/material.dart';

class shop extends StatefulWidget {
  @override
  _shopState createState() => _shopState();
}

class _shopState extends State<shop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                SizedBox(height: 220,),
                Container(
                  margin:  EdgeInsets.only(top:0.0),
                  child:Text('S H O P', 
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.red
                  )
                  ),
                  
                ),
              ]
    ));
    
  }
}