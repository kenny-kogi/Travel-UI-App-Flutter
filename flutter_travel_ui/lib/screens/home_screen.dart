import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 30.0),
          children: [
          Padding(
            padding: const EdgeInsets.only(right: 80.0, left: 20.0),
            child: Text("What you would like to find",
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold

            )),
          )  
          ],
 

        ),
      ),

    );
  }
}