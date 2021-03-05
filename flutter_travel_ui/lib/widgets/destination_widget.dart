
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_travel_ui/models/destination_model.dart';

class DestinationWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Text("Top Destinations",
                    style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.5
                    ),),
                    Text("See all",
                    style: TextStyle(
                      fontSize: 16.0,
                      letterSpacing: 1.0,
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.w600
                    ),)
                  ],),
                ),
                Container(
                  height: 300.0,
                  color: Colors.blue,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: destinations.length,
                    itemBuilder: (BuildContext context, int index){
                      Destination destination = destinations[index];
                      return Container(
                        margin: EdgeInsets.all(10.0),
                        width: 210.0,
                        color:Colors.red,
                        child: Stack(children: [
                          Container(
                            height: 120.0,
                            width: 200.0,
                            
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: Colors.white,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("${destination.activities.length} activities",
                                  style: TextStyle(
                                    fontSize: 22.0,
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 1.2
                                  ),),
                                  Text(destination.description, 
                                  style: TextStyle(
                                    color: Colors.grey
                                  ),)
                                ]
                              ),
                            )
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black26,
                                  offset: Offset(0.0, 2.0),
                                  blurRadius: 6.0
                                )
                              ]

                            )
                          )
                        ],)

                      );
                    })
                )
              ]
            );
  }
}