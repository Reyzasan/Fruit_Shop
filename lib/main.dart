import 'package:flutter/material.dart';
import 'package:uh/0.awal.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'UH',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      routes: {
        "/":(context) => awal(),
        // "awal":(context) => Content(),
        // "awal" : (context) => navbar(),
      },
    );
  }
}


