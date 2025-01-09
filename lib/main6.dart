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

        body: ListView(
          padding: EdgeInsets.all(10),
          children: [
            Container(
              height: 60,
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/student.jpg"),
                  radius: 25,
                ),
                title: Text(
                  "Avazxon Nazirov",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text("What's up bro"),
                trailing: Text(
                  "12:12",
                  style: TextStyle(color: Colors.grey),
                ),
              )
            ),

            Container(
                height: 60,
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage("assets/product.jpg"),
                    radius: 25,
                  ),
                  title: Text(
                    "Alisher",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text("How are you!"),
                  trailing: Text(
                    "12:10",
                    style: TextStyle(color: Colors.grey),
                  ),
                )
            ),

            Container(
                height: 60,
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage("assets/product.jpg"),
                    radius: 25,
                  ),
                  title: Text(
                    "Nuriddin",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text("Happy birthday!"),
                  trailing: Text(
                    "12:00",
                    style: TextStyle(color: Colors.grey),
                  ),
                )
            ),

            Container(
                height: 60,
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage("assets/product.jpg"),
                    radius: 25,
                  ),
                  title: Text(
                    "Avazxon Nazirov",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text("Just chillin"),
                  trailing: Text(
                    "10:40",
                    style: TextStyle(color: Colors.grey),
                  ),
                )
            ),

            Container(
                height: 60,
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage("assets/product.jpg"),
                    radius: 25,
                  ),
                  title: Text(
                    "Avazxon Nazirov",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text("Where have you been?"),
                  trailing: Text(
                    "00:00",
                    style: TextStyle(color: Colors.grey),
                  ),
                )
            )
          ],
        ),

        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.chat),
          backgroundColor: Colors.blue,
        ),
      )
    );
  }
}
