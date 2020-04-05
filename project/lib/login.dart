import 'package:flutter/material.dart';

import 'home.dart';

void main() => runApp(Login());

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
        child: SingleChildScrollView(
              child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                SizedBox(height: 30,),
                Container(
                  margin:  EdgeInsets.only(top:0.0),
                  child:Text('Log in to your acccount', 
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.red
                  )
                  ),
                  
                ),
                SizedBox(height: 30.0,),
                Material(
                  
                  elevation: 2,
                  
                  child: TextField(
                      
                      decoration: InputDecoration(    
                        
                        enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color:Colors.grey[300]),
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                    
                      prefixIcon:Icon(Icons.person),
                      
                      hintText: 'Username',
                    )
                  ),
                ),
                SizedBox(height:10.0),
                Material(
                  
                  elevation: 2,
                  child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(                            
                        enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color:Colors.grey[300]),
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),                
                      ),
                      
                      prefixIcon:Icon(Icons.lock),
                      hintText: 'Password',
                    )
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top:25.0, bottom: 40.0),
                  child:Text('Forget Password ?', 
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    
                    fontSize: 15,
                    color: Colors.red
                  )
                  ),
                ),
                  Container(
                  height: 45.0,
                  child: RaisedButton(onPressed: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>home()));
                  },
                  elevation: 2,
                  color: Colors.red,
                  child: Text('LOGIN',
                  style:TextStyle(color: Colors.white)
              ),
                  )
                ),
                Divider(
                  height:40.0,
                  thickness: 0.70,
                  color:Colors.red
                ),
                Row(
                  children:<Widget>[
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(left:85,top: 0,right: 10),
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          child: FlatButton(onPressed: null, child: Image.asset('assets/fb_logo.jpeg')),
                          radius: 30.0,
                        )
                        )),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(left:10,top: 0,right: 85),
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          child: FlatButton(onPressed: null, child: Image.asset('assets/google_logo.jpeg')),
                          radius: 30,
                        )
                        )), 
                  ]) 
                
              
              ]
            ),
        ),
      ),
      resizeToAvoidBottomPadding: false,
      resizeToAvoidBottomInset: false,
    );
  }
}