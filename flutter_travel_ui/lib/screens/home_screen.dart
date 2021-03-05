import 'package:flutter/material.dart';
import 'package:flutter_travel_ui/widgets/destination_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
int selectedindex = 0;
List<IconData> iconse = [
    FontAwesomeIcons.plane,
    FontAwesomeIcons.bed,
    FontAwesomeIcons.walking,
    FontAwesomeIcons.biking,
  

];

Widget _buidIcons(int index){
  return GestureDetector(
    onTap: (){
      selectedindex = index;

    },
      child: Container(
      height: 60.0,
      width: 60.0,
      decoration: BoxDecoration(
        color: selectedindex == index ? Theme.of(context).accentColor :  Color(0xFFE7EBEE),
        borderRadius: BorderRadius.circular(30.0)

      ),
      child: Icon(
        iconse[index],
        color: selectedindex == index ? Theme.of(context).primaryColor : Color(0xFFB4C1C4),
        size: 30.0,
      )

 
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
          SizedBox(height: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: iconse.asMap()
                  .entries
                  .map(
                    (MapEntry map) => _buidIcons(map.key),
                  ).toList(), ),
                  SizedBox(height: 20.0),

            DestinationWidget()
          ],
 

        ),
      ),

    );
  }
}