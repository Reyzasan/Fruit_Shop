import 'package:flutter/material.dart';
import 'package:uh/1.detail_home.dart';

void main() {
  runApp(awal());
}

class awal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Awal(),
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromARGB(255, 30, 30, 30),
      ),
    );
  }
}

class Awal extends StatefulWidget {
  @override
  _AwalState createState() => _AwalState();
}

class _AwalState extends State<Awal> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 36, 34, 34),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 36, 34, 34),
          leading: Container(
            margin: EdgeInsets.all(10),
            child: Icon(
              Icons.list,
              color: Color.fromARGB(255, 206, 189, 189),
              size: 50,
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
        body: Column(
          children: [
            Center(
              child: Stack(
                children: [
                  Container(
                    width: 380,
                    height: 190,
                    margin: EdgeInsets.only(top: 70),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 94, 88, 86),
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                    ),
                  ),
                  Positioned(
                    top: 2,
                    bottom: 1,
                    right: 4,
                    child: Image.asset('asset/buah.png'),
                  ),
                  Column(
                    children: [
                      Container(
                        width: 350,
                        height: 143,
                        margin: EdgeInsets.only(top: 110, left: 15),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 170, 157, 157).withOpacity(0.4),
                          borderRadius: BorderRadius.all(Radius.circular(16)),
                        ),
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 20, left: 10),
                              child: Row(
                                children: [
                                  Text(
                                    "O F F E R",
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.yellow,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        "Discount up to 40% Off",
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.symmetric(vertical: 10),
                                        child: Text(
                                          "In honor of World Health Day we'd like to", 
                                          maxLines: 2, 
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        height: 20,
                                        width: 100,
                                        decoration: BoxDecoration(
                                          color: Colors.yellow,
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        child: Center(
                                          child: Text(
                                            "View Offers",
                                            style: TextStyle(color: Colors.black),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 15, top: 20),
                  child: Row(
                    children: [
                      Text(
                        "Recommended Fruits",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(width: 20),
                      GestureDetector(
                        onTap: () {
                          print("View All clicked");
                        },
                        child: Row(
                          children: [
                            Text(
                              "View All",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.orange,
                              ),
                            ),
                            Transform.rotate(
                              angle: 3.14,
                              child: Icon(Icons.arrow_back, color: Colors.orange),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 15),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Content()),
                          );
                        },
                        child: Stack(
                          children: [
                            Container(
                              width: 180,
                              height: 230,
                              margin: EdgeInsets.only(top: 70),
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 201, 100, 17).withOpacity(0.3),
                                borderRadius: BorderRadius.all(Radius.circular(90)),
                              ),
                            ),
                            Positioned(
                              top: 25,
                              left: 0,
                              right: 0,
                              child: Image.asset(
                                'asset/alpukat.png',
                                width: 150,
                                height: 150,
                              ),
                            ),
                            Container(
                              width: 181,
                              height: 165,
                              margin: EdgeInsets.only(top: 180),
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 75, 72, 72),
                                borderRadius: BorderRadius.all(Radius.circular(16)),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                        ),
                                        Text(
                                          "5.0",
                                          style: TextStyle(
                                            fontSize: 18,
                                            color: Color.fromARGB(255, 240, 240, 240),
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      "FRUIT",
                                      style: TextStyle(
                                        fontSize: 19,
                                        color: Colors.orange,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "Avocado",
                                      style: TextStyle(
                                        fontSize: 25,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Text(
                                      "Rp. 30.000",
                                      style: TextStyle(
                                        fontSize: 25,
                                        color: Colors.orange,
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.bottomRight,
                                      child: Text(
                                        "/per kg",
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 15),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Content()),
                          );
                        },
                        child: Stack(
                          children: [
                            Container(
                              width: 180,
                              height: 230,
                              margin: EdgeInsets.only(top: 70),
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 201, 100, 17).withOpacity(0.3),
                                borderRadius: BorderRadius.all(Radius.circular(90)),
                              ),
                            ),
                            Positioned(
                              top: 25,
                              left: 0,
                              right: 0,
                              child: Image.asset(
                                'asset/strawberry.png',
                                width: 150,
                                height: 150,
                              ),
                            ),
                            Container(
                              width: 181,
                              height: 165,
                              margin: EdgeInsets.only(top: 180),
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 75, 72, 72),
                                borderRadius: BorderRadius.all(Radius.circular(16)),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                        ),
                                        Text(
                                          "5.0",
                                          style: TextStyle(
                                            fontSize: 18,
                                            color: Color.fromARGB(255, 240, 240, 240),
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      "FRUIT",
                                      style: TextStyle(
                                        fontSize: 19,
                                        color: Colors.orange,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "Strawberry",
                                      style: TextStyle(
                                        fontSize: 25,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Text(
                                      "Rp. 30.000",
                                      style: TextStyle(
                                        fontSize: 25,
                                        color: Colors.orange,
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.bottomRight,
                                      child: Text(
                                        "/per kg",
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
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
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          backgroundColor: Color(0xFF2C2C2C),
          selectedItemColor: Color(0xFFEEAC5C),
          unselectedItemColor: Color(0xFFA8A8A8),
          showSelectedLabels: false,
          showUnselectedLabels: false,
          iconSize: 45.0,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search_rounded),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_rounded),
              label: 'Heart',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.my_library_books_outlined),
              label: 'Task/List',
            ),
          ],
        ),
      ),
    );
  }
}
