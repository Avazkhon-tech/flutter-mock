import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Home page"),
          backgroundColor: Colors.red,
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              gradient: LinearGradient(
            colors: [
              Colors.green,
              Colors.blue,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          )),
          child: Center(
            child: Container(
              height: 280,
              width: 310,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.white),
              padding: EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5), // Shadow color with opacity
                          spreadRadius: 2, // How far the shadow spreads
                          blurRadius: 5, // How soft or hard the shadow is
                          offset: Offset(0, 3), // Offset for the shadow (x, y)
                        ),
                      ],
                    ),
                  ),

                  Text(
                    "Avazxon Nazirov",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Java backend developer",
                    style: TextStyle(fontSize: 15, color: Colors.green),
                  ),
                  Text(
                    "Avazxon is a Java developer who is curious to learn new stuff",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green, // Background color of the button
                    ),
                    child: Text(
                      "Follow",
                      style: TextStyle(color: Colors.blue), // Text color
                    ),
                  )

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
