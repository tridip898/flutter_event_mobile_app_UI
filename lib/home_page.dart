import 'package:event_mobile_app_ui/concert_detail.dart';
import 'package:flutter/material.dart';

import 'categories.dart';
import 'concert_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomAppBar(
          color: Colors.brown.shade900.withOpacity(0.9),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(50)
                  ),
                    padding: EdgeInsets.all(10),
                    child: Icon(Icons.home_filled,color: Colors.red,size: 30,)),
                Icon(Icons.favorite_outline_outlined,size: 30,color: Colors.white38,),
                Icon(Icons.ondemand_video_outlined,size: 30,color: Colors.white38,),
                Icon(Icons.email_outlined,size: 30,color: Colors.white38,),
                Icon(Icons.person_outline,size: 30,color: Colors.white38,),
              ],
            ),
          ),
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.brown.shade500.withOpacity(0.9),
                  Colors.brown.shade900.withOpacity(1)
            ])
          ),
          child: Column(
            children: [
              //app bar
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey.shade100.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      padding: EdgeInsets.all(10),
                      child: Image.asset("lib/icons/menu.png",height: 25,color: Colors.white,),
                    ),
                    Row(
                      children: [
                        Icon(Icons.location_on,color: Colors.red,size: 27,),
                        Text("Dhaka, Bangladesh",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold, color: Colors.white),)
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey.shade100.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      padding: EdgeInsets.all(10),
                      child: Image.asset("lib/icons/man.png",height: 30,),
                    ),
                  ],
                ),
              ),

              //search
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: Colors.grey.shade400.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(30)
                ),
                padding: EdgeInsets.symmetric(horizontal: 15,vertical: 6),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Search events ....",
                    hintStyle: TextStyle(fontSize: 20,color: Colors.grey.shade200),
                    prefixIcon: Icon(Icons.search,size: 30,color: Colors.grey.shade200,),
                    suffixIcon: Icon(Icons.filter_list,color: Colors.grey.shade100,size: 30,)
                  ),
                ),
              ),
              
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Upcoming events",style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold,color: Colors.grey.shade200),),
                    Text("See All",style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold,color: Colors.grey.shade200),),
                  ],
                ),
              ),

              //categories
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Categories(
                      catName: "My feed",
                      icon: Icons.feed_outlined,
                      color: Colors.red,
                    ),
                    Categories(
                      catName: "Food",
                      icon: Icons.restaurant,
                      color: Colors.grey.shade200.withOpacity(0.2),
                    ),
                    Categories(
                      catName: "Concert",
                      icon: Icons.music_note_outlined,
                      color: Colors.grey.shade200.withOpacity(0.2),
                    ),
                    Categories(
                      catName: "Travel",
                      icon: Icons.travel_explore,
                      color: Colors.grey.shade200.withOpacity(0.2),
                    )
                  ],
                ),
              ),

              SizedBox(height: 10,),
              //card
              Expanded(
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    GestureDetector(
                      child: ConcertCard(
                        concertName: "Joy Bangla Concert",
                        location: "Dhaka, BD",
                        ticketPrice: 45.99,
                        time: "10:00 AM",
                        image: "lib/images/joy_bangla_concert.jpg",
                        date: "29 Dec",
                      ),
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>ConcertDetail()));
                      },
                    ),
                    ConcertCard(
                      concertName: "Porto Music Festival",
                      location: "LA, USA",
                      ticketPrice: 65.30,
                      time: "08:00 PM",
                      image: "lib/images/concert.webp",
                      date: "22 Dec",
                    ),
                    ConcertCard(
                      concertName: "MTB Festival",
                      location: "Mumbai, India",
                      ticketPrice: 36.99,
                      time: "05:00 PM",
                      image: "lib/images/concert2.webp",
                      date: "2 Jan",
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
