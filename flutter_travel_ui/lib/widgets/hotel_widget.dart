import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_travel_ui/models/hotel_model.dart';

class HotelWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Text("Executive Hotels",
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
              
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: hotels.length,
                    itemBuilder: (BuildContext context, int index){
                      Hotel hotel = hotels[index];
                      return Container(
                        margin: EdgeInsets.all(10.0),
                        width: 240.0,
                      
                        child: Stack(
                          alignment: Alignment.topCenter,
                          children: [
                          Positioned(
                            bottom: 15.0,
                              child: Container(
                              height: 120.0,
                              width: 220.0,
                              
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: Colors.white,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                 
                                  children: [
                                    Text(hotel.name,
                                    style: TextStyle(
                                      fontSize: 22.0,
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: 1.2
                                    ),),
                                    SizedBox(height: 2.0),
                                    Text(hotel.address, 
                                    style: TextStyle(
                                      color: Colors.grey
                                    ),),
                                    SizedBox(height: 10.0),
                                    Text("Price ${hotel.price} ", 
                                    style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w600,
                                     
                                    ),), 
                                    
                                  ]
                                ),
                              )
                            ),
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

                            ),
                            child: Stack(
                                children: [ ClipRRect(
                                borderRadius: BorderRadius.circular(20.0),
                                  child: Image(
                                  height: 180.0,
                                  width: 220.0,
                                  image: AssetImage(hotel.imageUrl),
                                  fit: BoxFit.cover,
                                ),
                              ),
                             
                              ]
                            ),

                          )
                        ],)

                      );
                    })
                )
              ]
            );
  }
}