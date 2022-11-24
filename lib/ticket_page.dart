import 'package:flutter/material.dart';

class TicketPage extends StatelessWidget {
  const TicketPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.brown,
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                   Colors.brown.shade500.withOpacity(0.8),
                   Colors.brown.shade900.withOpacity(0.9),
            ])
          ),
          child: Stack(
            children: [
              //app bar
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        decoration: BoxDecoration(
                            color: Colors.grey.shade200.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(50)),
                        child: IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(
                              Icons.arrow_back_ios,
                              size: 25,
                              color: Colors.white,
                            ))),
                    Text(
                      "Tickets",
                      style: TextStyle(
                          fontSize: 25,
                          fontFamily: "Times New Roman",
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    ),
                    Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.grey.shade200.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(50)),
                        child: Icon(
                          Icons.share,
                          size: 25,
                          color: Colors.white,
                        )),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: MediaQuery.of(context).size.height*0.63,
                    decoration: BoxDecoration(
                      color: Colors.brown.shade400.withOpacity(0.9),
                      borderRadius: BorderRadius.circular(30)
                    ),
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Container(
                          height: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(topRight: Radius.circular(30),topLeft: Radius.circular(30)),
                            image: DecorationImage(image: AssetImage("lib/images/ticket.jpg"),fit: BoxFit.fill)
                          ),
                        ),
                        Expanded(
                            child: Container(
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(30),
                                bottomRight: Radius.circular(30))
                          ),
                          padding: EdgeInsets.all(10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IntrinsicWidth(
                                child: Column(
                                  children: [
                                    Text("Joy Bangla Concert: Dhaka",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                                    SizedBox(height: 08,),
                                    Text("29 December 2022",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                                    Divider(thickness: 1,color: Colors.grey.shade400,height: 30),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Date",style: TextStyle(fontSize: 19,color: Colors.grey.shade600),),
                                        Text("Time",style: TextStyle(fontSize: 19,color: Colors.grey.shade600),),
                                      ],
                                    ),
                                    SizedBox(height: 10,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Dec 29, 2022",style: TextStyle(fontSize: 19,color: Colors.black,fontWeight: FontWeight.bold),),
                                        Text("05:00 PM",style: TextStyle(fontSize: 19,color: Colors.black,fontWeight: FontWeight.bold),),
                                      ],
                                    ),
                                    SizedBox(height: 10,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Venue",style: TextStyle(fontSize: 19,color: Colors.grey.shade600),),
                                        Text("Seat",style: TextStyle(fontSize: 19,color: Colors.grey.shade600),),
                                      ],
                                    ),
                                    SizedBox(height: 10,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Army Stadium",style: TextStyle(fontSize: 19,color: Colors.black,fontWeight: FontWeight.bold),),
                                        Text("No Seat",style: TextStyle(fontSize: 19,color: Colors.black,fontWeight: FontWeight.bold),),
                                      ],
                                    ),
                                    SizedBox(height: 10,),
                                    Divider(thickness: 1,color: Colors.grey.shade400,height: 20),
                                    
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                        )
                      ],
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(bottom: 30.0),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.pink,
                          borderRadius: BorderRadius.circular(30)
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 30,vertical: 15),
                        child: Row(
                          children: [
                            Image.asset("lib/icons/download.png",height: 30,color: Colors.white,),
                            SizedBox(width: 10,),
                            Text("Image",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),)
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30)
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 30,vertical: 15),
                        child: Row(
                          children: [
                            Image.asset("lib/icons/qr-code.png",height: 30,color: Colors.black,),
                            SizedBox(width: 10,),
                            Text("QR code",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),)
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
