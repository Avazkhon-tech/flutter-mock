import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: UserProfileScreen(),
    );
  }
}

class UserProfileScreen extends StatelessWidget {
  final List<Map<String, String>> items = [
    {'title': 'Item 1', 'description': 'This is item 1', 'image': 'assets/product.jpg'},
    {'title': 'Item 2', 'description': 'This is item 2', 'image': 'assets/product.jpg'},
    {'title': 'Item 3', 'description': 'This is item 3', 'image': 'assets/product.jpg'},
    {'title': 'Item 4', 'description': 'This is item 4', 'image': 'assets/product.jpg'},
    {'title': 'Item 5', 'description': 'This is item 5', 'image': 'assets/product.jpg'},
    {'title': 'Item 6', 'description': 'This is item 6', 'image': 'assets/product.jpg'},
    {'title': 'Item 7', 'description': 'This is item 7', 'image': 'assets/product.jpg'},
    {'title': 'Item 8', 'description': 'This is item 8', 'image': 'assets/product.jpg'},
    {'title': 'Item 9', 'description': 'This is item 9', 'image': 'assets/product.jpg'},
    {'title': 'Item 10', 'description': 'This is item 10', 'image': 'assets/product.jpg'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Main page'),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
          ),
        ],
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(8),
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text("${items[index]['title']} Information"),
                      content: Text("${items[index]['description']}"),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop(); // Close the dialog
                          },
                          child: Text('Close'),
                        ),
                      ],
                    );
                  },
                );
              },
              iconAlignment: IconAlignment.end,
              child: Row(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(items[index]['image']!),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(40),
                    ),
                  ),
                  SizedBox(width: 20),
                  Container(
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(width: 40),
                          Text(
                            items[index]['title']!,
                            style: TextStyle(color: Colors.black),
                          ),
                          Text(
                            items[index]['description']!,
                            style: TextStyle(color: Colors.black, fontSize: 10),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Spacer(),
                  Icon(Icons.keyboard_arrow_right),
                ],
              ),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(200, 70),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
