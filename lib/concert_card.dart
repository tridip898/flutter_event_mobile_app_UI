import 'package:flutter/material.dart';

class ConcertCard extends StatelessWidget {
  final String concertName;
  final String location;
  final String time;
  final String image;
  final double ticketPrice;
  final String date;
  const ConcertCard({Key? key, required this.concertName, required this.location, required this.time, required this.image, required this.ticketPrice, required this.date}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20,right: 20,top: 25),
      height: MediaQuery.of(context).size.height*0.32,
      decoration: BoxDecoration(
          color: Colors.grey.shade400.withOpacity(0.5),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
            bottomLeft: Radius.circular(50),
            bottomRight: Radius.circular(50),
          ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade800.withOpacity(0.7),
            blurRadius: 40,
            spreadRadius: 10,
            offset: Offset(10, 10)
          )
        ]
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: MediaQuery.of(context).size.height*0.22,
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(image),fit: BoxFit.cover),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30))
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    children: [
                      Container(
                          decoration: BoxDecoration(
                            color: Colors.pinkAccent.shade400.withOpacity(0.6),
                            borderRadius: BorderRadius.circular(30)
                          ) ,
                          padding: EdgeInsets.all(10),
                          child: Text(date,style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white,fontSize: 18),))
                    ],
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 13,vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(concertName,style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500,color: Colors.grey.shade50),),
                    SizedBox(height: 3,),
                    Row(
                      children: [
                        Text(location,style: TextStyle(fontSize: 20,color: Colors.grey.shade50),),
                        Text(" - ",style: TextStyle(fontSize: 20,color: Colors.grey.shade50),),
                        Text(time,style: TextStyle(fontSize: 18,color: Colors.grey.shade50),),
                      ],
                    )
                  ],
                ),
                Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30)
                    ),
                    padding: EdgeInsets.all(10),
                    child: Text("\$"+ticketPrice.toString(),style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),))
              ],
            ),
          )
        ],
      ),
    );
  }
}
