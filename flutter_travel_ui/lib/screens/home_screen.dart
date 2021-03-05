import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

List<IconData> icons = [
    FontAwesomeIcons.plane,
    FontAwesomeIcons.bed,
    FontAwesomeIcons.walking,
    FontAwesomeIcons.biking,
  

];

Widget _buidIcons(int index){
  return Container(
    height: 60.0,
    width: 60.0,
    decoration: BoxDecoration(
      color: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(30.0)

    ),

 
  );
}


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
          )  ,
          _buidIcons(0)
          ],
 

        ),
      ),

    );
  }
}