import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uh/0.awal.dart';

void main(){
  runApp(Content());
}
class Content extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 59, 56, 56),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 59, 56, 56),
        toolbarHeight: 90,
        leading: Container(
          margin: EdgeInsets.only(left: 10),
          child: Row(
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> awal()));
                },
                child: Icon(Icons.arrow_back, size: 40, color: const Color.fromARGB(255, 196, 170, 170),),
              )
            ],
          ),
        ),
        actions: [
          Container(
              margin: EdgeInsets.all(10),
              child: Icon(
                Icons.shopping_bag_outlined,
                color: Colors.white,
                size: 45,
              ),
            ),
            Container(
              height: 40,
              width: 40,
              margin: EdgeInsets.only(top: 15, right: 9),
              child: CircleAvatar(
                child: Image.asset("asset/alpukat.png"),
              ),
            ),
        ],
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              Title(color: Color.fromARGB(255, 224, 213, 112), child: Text("F R U I T", style: TextStyle(fontSize: 30, color: Colors.yellow),)),
              Text("Avocado", style: TextStyle(fontSize: 65, color: Color.fromARGB(255, 163, 151, 151))),
              Stack(
                children: [
                  Container(
                    width: 600,
                    height: 450,
                    margin: EdgeInsets.only(top: 10),
                    decoration: BoxDecoration(
                      // shape: BoxShape.circle,
                      color: Color.fromARGB(255, 41, 39, 38),
                      borderRadius: BorderRadius.all(Radius.circular(180)),
                    ),
                  ),
                  Positioned(
                    top: 2,
                    bottom: 350,
                    left: 0,
                    right: 15,
                    child: Image.asset('asset/alpukat.png', width: 900, height: 900,),
                  ),
                  Column(
                    children: [
                      Container(
                        width: 600,
                        height: 400,
                        margin: EdgeInsets.only(top: 300, left: 5),
                        decoration: BoxDecoration(
                          color:  Color.fromARGB(255, 41, 39, 38),
                        ),
                        child: Container(
                          child: Column(
                            children: [
                              Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(top: 10, left: 20, right: 10),
                                    child: Row(
                                      children: [
                                        Text(
                                          "Rp. 30.000",
                                          style: TextStyle(
                                          fontSize: 40,
                                          color: Colors.yellow,
                                          fontWeight: FontWeight.bold
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(left: 120),
                                          child: CircleAvatar(
                                            backgroundColor: Colors.white.withOpacity(0.3),
                                            child: Stack(
                                              children: [
                                                Icon(CupertinoIcons.heart, color: Color.fromARGB(255, 189, 50, 80), size: 50,)
                                              ],
                                            ),
                                            radius: 30,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 3, left: 20, right: 10),
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        Text(
                                          "/per kg",
                                          style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold
                                          ),
                                        ),
                                        SizedBox(width: 10,),
                                        // CircleAvatar(
                                        //   backgroundColor: Colors.white.withOpacity(0.3),
                                        //   child: Stack(
                                        //     children: [
                                        //       Icon(CupertinoIcons.heart, color: Color.fromARGB(255, 189, 50, 80), size: 60,)
                                        //     ],
                                        //   ),
                                        //   radius: 40,
                                        // ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 20,),
                                child: Row(
                                  children: [
                                    Icon(Icons.star, color: Colors.yellow, size: 30,),
                                    Icon(Icons.star, color: Colors.yellow, size: 30,),
                                    Icon(Icons.star, color: Colors.yellow, size: 30,),
                                    Icon(Icons.star, color: Colors.yellow, size: 30,),
                                    Icon(Icons.star, color: Colors.yellow, size: 30,),
                                    Text("5.0", style: TextStyle(fontSize: 15, color: Colors.white),)
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 40, right: 40, top: 25),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: Colors.white.withOpacity(0.3),
                                      child: Stack(
                                        children: [
                                          Icon(Icons.thumb_up_outlined, size: 50, color: Color.fromARGB(255, 226, 181, 58),),
                                        ],
                                      ),
                                      radius: 40,
                                    ),
                                    CircleAvatar(
                                      backgroundColor: Colors.white.withOpacity(0.3),
                                      child: Stack(
                                        children: [
                                          Icon(Icons.directions_car, size: 50, color: Color.fromARGB(255, 226, 181, 58)),
                                        ],
                                      ),
                                      radius: 40,
                                    ),
                                    CircleAvatar(
                                      backgroundColor: Colors.white.withOpacity(0.3),
                                      child: Stack(
                                        children: [
                                          Icon(Icons.flatware_outlined, size: 50, color: Color.fromARGB(255, 226, 181, 58)),
                                        ],
                                      ),
                                      radius: 40,
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 25),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Text("Quality Asurance", style: TextStyle(fontSize: 15, color: Colors.white),),
                                    Text("Fast Delivery", style: TextStyle(fontSize: 15, color: Colors.white),),
                                    Text("Best in-taste", style: TextStyle(fontSize: 15, color: Colors.white),),
                                  ],
                                ),
                              ),
                              
                              Container(
                                margin: EdgeInsets.only(top: 20, left: 10, right: 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: Container(
                                        height: 75,
                                        decoration: BoxDecoration(
                                          color: const Color.fromARGB(255, 58, 57, 52),
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Icon(Icons.add, size: 40, color: Colors.white),
                                            Text("7", style: TextStyle(fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold)),
                                            Icon(CupertinoIcons.minus, size: 40, color: Colors.white),
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 10), 

                                    Expanded(
                                      child: Container(
                                        height: 80,
                                        decoration: BoxDecoration(
                                          color: Color.fromARGB(255, 207, 177, 24),
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Text("Go To Card", style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold)),
                                            Transform.rotate(
                                              angle: 3.14,
                                              child: (Icon(Icons.arrow_back, size: 30)),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      ),
    );
  }
}
