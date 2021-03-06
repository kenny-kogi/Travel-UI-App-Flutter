import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_travel_ui/models/activity_model.dart';
import 'package:flutter_travel_ui/models/destination_model.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DestinationScreen extends StatefulWidget {
   final Destination destination;
  DestinationScreen({this.destination});

  @override
  _DestinationScreenState createState() => _DestinationScreenState();
}

class _DestinationScreenState extends State<DestinationScreen> {
  Text _buidStar(int rating){
    String stars = "";
    for (int i =0; i < rating; i ++){
      stars += '⭐ ';
    }
    stars.trim();
    
    return Text(stars);
  }

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Column(
      children: [
        Stack(
                  children:[ Container(
            height: MediaQuery.of(context).size.width,
            
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  offset: Offset(0.0, 2.0),
                  blurRadius: 6.0
                )
              ]

            ),
            child: Hero(
              tag: widget.destination.imageUrl,
                  child: ClipRRect(
                  borderRadius: BorderRadius.circular(30.0),
                  child: Image(
                  image: AssetImage(widget.destination.imageUrl),
                  fit: BoxFit.cover, 
                ),


              ),
            ),
      



          ),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 40.0),
              child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              IconButton(icon: Icon(Icons.arrow_back), 
              onPressed:() => Navigator.pop(context),
              iconSize: 30.0,
              
              
              ),
              Row(
                  children: [IconButton(
                  icon: Icon(Icons.search,
                  size: 30.0,), 
                  onPressed: (){}),

                  IconButton(
                  icon: Icon(Icons.menu), 
                  onPressed: (){},
                  iconSize: 30.0,
                  
                  )
                              ])
              ]
            ),
          ),
           Positioned(
             left: 10.0,
             bottom: 20.0,
              child: Column(
              children: [
                  Text(widget.destination.city,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                    letterSpacing: 1.2,
                    fontWeight: FontWeight.bold
                  ),),
                  Row(
                    children: [
                    Icon(FontAwesomeIcons.locationArrow, size: 20.0, color: Colors.white,),
                      SizedBox(width: 5.0,),
                      Text(widget.destination.country, 
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0
                    ),),
                    ]),
              ]
          ),
           ),
           Positioned(
             right: 20.0,
             bottom: 20.0,
             child: Icon(Icons.location_on,
             size: 30.0,
             color: Colors.white,)
           ),
                  ]),
      Expanded(
              child: ListView.builder(
                padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
          itemCount: widget.destination.activities.length,
          itemBuilder: (BuildContext context, int index){
            Activity activity = activities[index];
              return Stack(
                  children: [
                    Container(
                  margin: EdgeInsets.fromLTRB(40.0, 5.0, 20.0, 5.0),
                  height: 170.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.white
                  ),
                child: Padding(

                    padding: EdgeInsets.fromLTRB(100.0, 20.0, 20.0, 20.0),
                    child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Container(
                          width: 120.0,
                          child: Text(activity.name,
                           style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.w600,
                          
                                        ),
                          overflow: TextOverflow.ellipsis ,
                          maxLines: 2,),
                        ),
                        Column(children: [Text("\$${activity.price}",
                                          style: TextStyle(
                                          fontSize: 22.0,
                                          fontWeight: FontWeight.w600,
                                        ),),
                        Text("per Pax",
                        style: TextStyle(
                          color: Colors.grey
                        ),)
                        ])
                      ],),
                      SizedBox(height: 10.0),
                      Text(activity.type,
                                  style: TextStyle(
                                  color: Colors.grey,
                                ),),
                                SizedBox(height: 10.0),
                      _buidStar(activity.rating),
                      SizedBox(height: 10.0),
                      Row(
                        children: [
                          Container(
                            width: 70.0,
                            decoration: BoxDecoration(
                              color: Theme.of(context).accentColor,
                              borderRadius: BorderRadius.circular(10.0)
                            ),
                            alignment: Alignment.topCenter,
                            child: Text(
                              activity.startTimes[0]
                            ),
                          ),
                          SizedBox(width: 10.0),
                          Container(
                            width: 70.0,
                            decoration: BoxDecoration(
                              color: Theme.of(context).accentColor,
                              borderRadius: BorderRadius.circular(10.0)
                            ),
                            alignment: Alignment.topCenter,
                            child: Text(
                              activity.startTimes[1]
                            ),
                          ),
                        ],
                      )

                    ]
                  ),
                ),

                ),

                Positioned(
                  left: 20.0,
                  top: 15.0,
                  bottom: 15.0,
                    child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Image(
                      
                      width: 110.0,
                      image: AssetImage(activity.imageUrl),
                      fit: BoxFit.cover,
                      
                      ),
                      
                  ),
                )
                               ] );

          },
         
         ),
      )
      ],
  
    ),
    
    
    
    
    );
  }
}