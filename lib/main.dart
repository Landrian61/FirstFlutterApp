import 'package:flutter/material.dart';

void main() =>runApp(MaterialApp(
    home: Load(),
));

class Load extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text('My First App'),
        centerTitle: true ,
        backgroundColor: Colors.green[600],
      ),
        body: Container(
          color: Colors.blueGrey[100],
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Container(
                    color: Colors.green,
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Container(
                    color: Colors.green,
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Container(
                    color: Colors.green,
                  )
                ],
              ),


            ],
          ),

        ),
        bottomNavigationBar: Container(
          color: Colors.green,
          height: 50.0,
          child:Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Icon(
                Icons.ac_unit,
                color: Colors.black,
                size: 25.0,
              ),
              SizedBox(width: 10.0),
              Icon(
                Icons.accessibility_new,
                color: Colors.black,
                size: 25.0,
              ),
              SizedBox(width: 10.0),
              Icon(
                Icons.account_balance_outlined,
                color: Colors.black,
                size: 25.0,
              ),
              SizedBox(width: 10.0),
              Icon(
                Icons.access_alarm_rounded,
                color: Colors.black,
                size: 25.0,
              ),

            ],
          ),
        )

    );
  }
}


