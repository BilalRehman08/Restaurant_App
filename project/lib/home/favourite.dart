import 'dart:collection';

import 'package:flutter/material.dart';

class favourite extends StatefulWidget {
  @override
  _favouriteState createState() => _favouriteState();
}

class _favouriteState extends State<favourite> {
 
  List item = List(
    
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: GridView.count(
          crossAxisCount: 2,
          children: List.generate(11, (index){
            return Card(
              child: Container(
                child: Text("$index")
              ),);

          })
          ,),
      
    );
  }
}