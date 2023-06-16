import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          title: Text('My First App'),
          centerTitle: true ,
          backgroundColor: Colors.green[600],
        ),
        body:Center(
          child:  SizedBox(
            child:  Text("Welcome",
              style: TextStyle(color:Colors.black,fontSize: 25),),
          ),
        )


    );
  }
}
