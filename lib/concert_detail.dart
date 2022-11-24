import 'package:event_mobile_app_ui/ticket_page.dart';
import 'package:flutter/material.dart';

class ConcertDetail extends StatelessWidget {
  const ConcertDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomAppBar(
          elevation: 0,
          color: Colors.brown.shade900,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    decoration: BoxDecoration(
                        color: Colors.grey.shade300.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(50)),
                    padding: EdgeInsets.all(20),
                    child: Icon(
                      Icons.favorite,
                      size: 40,
                      color: Colors.white,
                    )),
                MaterialButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>TicketPage()));
                },
                color: Colors.red,
                  child: Text("Get a Ticket",style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.w500),),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)
                  ),
                  padding: EdgeInsets.only(left: 50,right: 50,top: 20,bottom: 20),
                )
              ],
            ),
          ),
        ),
        body: Stack(
          fit: StackFit.expand,
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("lib/images/rock.jpg"),
                      fit: BoxFit.fill)),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 20.0, horizontal: 15),
              child: Align(
                alignment: Alignment.topLeft,
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
                              Icons.arrow_back,
                              size: 25,
                              color: Colors.white,
                            ))),
                    Text(
                      "Details",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
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
            ),
            ShaderMask(
              shaderCallback: (rect) {
                return LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.white,
                      Colors.white.withOpacity(0.5),
                      Colors.white.withOpacity(0),
                    ],
                    stops: [
                      0.0,
                      0.4,
                      0.6
                    ]).createShader(rect);
              },
              blendMode: BlendMode.dstOut,
              child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                      Colors.brown.shade400,
                      Colors.brown.shade900
                    ])),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Joy Bangla Concert",
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Dhaka, Bangladesh",
                            style: TextStyle(
                                fontSize: 20, color: Colors.grey.shade200),
                          )
                        ],
                      ),
                      Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30)),
                          padding: EdgeInsets.all(10),
                          child: Text(
                            "\$45.99".toString(),
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.w600),
                          ))
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "29",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "December",
                            style: TextStyle(
                                fontSize: 20, color: Colors.grey.shade500),
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Tuesday",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "10:00 PM - End",
                            style: TextStyle(
                                fontSize: 20, color: Colors.grey.shade500),
                          )
                        ],
                      ),
                      Container(
                          decoration: BoxDecoration(
                              color: Colors.grey.shade300.withOpacity(0.4),
                              borderRadius: BorderRadius.circular(50)),
                          padding: EdgeInsets.all(10),
                          child: Icon(
                            Icons.calendar_month_rounded,
                            size: 30,
                            color: Colors.grey.shade200,
                          ))
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  RichText(
                      text: TextSpan(
                          text: "About this events: ",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                          children: [
                        TextSpan(
                            text:
                                "Joy bangla concert is one of most biggest and famous musical festival in Bangladesh. In this concert, all of the famous band in Bangladesh performed and this year also will same.",
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 18,
                                color: Colors.grey.shade400))
                      ])),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Description",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.orange,
                          ),
                          Text(
                            "\t4.8",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 20),
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Container(
                              padding: EdgeInsets.all(2) ,
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade200.withOpacity(0.2),
                                  borderRadius: BorderRadius.circular(50)),
                              child: Icon(
                                Icons.numbers,
                                size: 20,
                                color: Colors.white,
                              )),
                          Text("\tJames will perform in 29 December at 8 PM",style: TextStyle(color: Colors.grey.shade400,fontSize: 17),)
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                              padding: EdgeInsets.all(2) ,
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade200.withOpacity(0.2),
                                  borderRadius: BorderRadius.circular(50)),
                              child: Icon(
                                Icons.numbers,
                                size: 20,
                                color: Colors.white,
                              )),
                          Text("\tArtcell will perform in 29 December at 9 PM",style: TextStyle(color: Colors.grey.shade400,fontSize: 17),)
                        ],
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
