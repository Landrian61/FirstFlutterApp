import 'package:flutter/material.dart';

class bottomNavPage extends StatefulWidget {
  const bottomNavPage({Key? key}) : super(key: key);

  @override
  State<bottomNavPage> createState() => _bottomNavPageState();
}

class _bottomNavPageState extends State<bottomNavPage> {
  int index = 0;
  List positions = ['home','search','notifications','settings'];
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Center(
        child: SizedBox(
          child: Text(
            positions[index],
            style: TextStyle(color: Colors.black,fontSize: 20),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        width: MediaQuery.of(context).size.width,
        height: 70,
        margin: EdgeInsets.fromLTRB(20, 0, 20, 15),
        decoration: BoxDecoration(
          color: Colors.limeAccent,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
              onTap: (){
                setState(() {
                  index = 0;});
              },
              child: const Icon(
                Icons.home_filled, color: Colors.black,size: 25,
              ),
            ),
            InkWell(
              onTap: (){
                setState(() {
                  index = 1;});
              },
              child: const Icon(
                Icons.search, color: Colors.black,size: 25,
              ),
            ),
            InkWell(
              onTap: (){
                setState(() {
                  index = 2;});
              },
              child: const Icon(
                Icons.notifications_active, color: Colors.black,size: 25,
              ),
            ),
            InkWell(
              onTap: (){
                setState(() {
                  index = 3;});
              },
              child: const Icon(
                Icons.settings, color: Colors.black,size: 25,
              ),
            )
          ],
        ),

      ),
    );
  }
}
