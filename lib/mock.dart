import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: Container(
              child: Padding(
                padding: EdgeInsets.all(20),
                child: ListView(
                  children: [
                    Container(
                      child: Center(
                        child: CircleAvatar(
                          backgroundImage: AssetImage("assets/logo.jpg"),
                          radius: 50,
                        ),
                      ),
                    ),

                    Container(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: EdgeInsets.only(top: 30),
                        child: Text(
                          "MU University",
                          style: TextStyle(
                              color: Color(0xFFDC3838),
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),

                    Text(
                        "data",
                      style: TextStyle(
                        color: Colors.white
                      ),
                    ),


                    SizedBox(height: 20),

                    TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.email),
                        labelText: 'Create email',
                        hintText: "avazxon@gmail.com",
                        border: OutlineInputBorder(),
                      ),
                    ),

                    SizedBox(height: 20),

                    TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person),
                        labelText: 'Enter your name',
                        hintText: "Nazirov",
                        border: OutlineInputBorder(),
                      ),
                    ),

                    SizedBox(height: 20),

                    TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock),
                        labelText: 'Create password',
                        hintText: "Avazxon",
                        border: OutlineInputBorder(),
                      ),
                    ),

                    SizedBox(height: 20),

                    ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue
                        ),
                        child: Text(
                            "Sign up"
                        )
                    ),

                    SizedBox(height: 20),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Already have an account?"),
                        SizedBox(width: 20),
                        Text(
                          "Log in",
                          style: TextStyle(
                              color: Colors.blue
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.black
              ),
            )
        )
    );
  }
}
