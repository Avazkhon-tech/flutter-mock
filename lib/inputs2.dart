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
            appBar: AppBar(
              title: Text("Telegram"),
              backgroundColor: Colors.blue,
            ),
            body: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.blue, Colors.green]
                ),
              ),
              child: Padding(
                padding: EdgeInsets.fromLTRB(40, 150, 40, 250),
                child: Container(
                  height: 550,
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: ListView(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: EdgeInsets.only(top: 30),
                            child: Text(
                              "Register",
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),

                        SizedBox(height: 20),

                        TextField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.person_2),
                            labelText: 'First name',
                            hintText: "Avazxon",
                            border: OutlineInputBorder(),
                          ),
                        ),

                        SizedBox(height: 20),

                        TextField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.person),
                            labelText: 'Last name',
                            hintText: "Nazirov",
                            border: OutlineInputBorder(),
                          ),
                        ),

                        SizedBox(height: 20),

                        TextField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.email),
                            labelText: 'Email',
                            hintText: "avazxon@gmail.com",
                            border: OutlineInputBorder(),
                          ),
                        ),

                        SizedBox(height: 20),

                        TextField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.lock),
                            labelText: 'Password',
                            hintText: "Avazxon",
                            border: OutlineInputBorder(),
                          ),
                        ),

                        SizedBox(height: 20),

                        TextField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.phone),
                            labelText: 'Phone number',
                            hintText: "+998999999999",
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
                ),
              ),
            )
        )
    );
  }
}
