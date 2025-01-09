import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Home page"),
//           backgroundColor: Colors.red,
//         ),
//
//         body: Container(
//           height: MediaQuery.of(context).size.height,
//           width: MediaQuery.of(context).size.width,
//           child: Center(
//               child: Column(
//                 children: [
//                   Image.asset(
//                     'assets/student.jpg',
//                     fit: BoxFit.cover,
//                     width: 510,
//                     height: 200,
//                   ),
//                   SizedBox(height: 20,),
//                   CircleAvatar(
//                     radius: 50,
//                     backgroundImage: AssetImage('assets/img.png'),
//                   ),
//
//                   SizedBox(height: 20,),
//                   Text('Welcome to Flutter', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
//                   Text('B Bunch of tex A lot of textunch of tex A lot of text Bunch of tex A lot of text')
//                 ],
//               )
//           ),
//         ),
//       ),
//     );
//   }
// }


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
        backgroundColor: Colors.red,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Image.asset(
                    'assets/product.jpg',
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: 180,
                  ),
                  Positioned(
                    bottom: 10,
                    left: 10,
                    child: Text(
                      'Discover Amazing products',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        shadows: [
                          Shadow(
                            offset: Offset(2.5, 2.5),
                            blurRadius: 5.0,
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Shop by categories',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    GestureDetector(
                      onTap: () {
                      },
                      child: Text(
                        'See All',
                        style: TextStyle(fontSize: 16, color: Colors.blue),
                      ),
                    ),
                  ],
                ),
              ),


              SizedBox(height: 20),
              // Make this section horizontally scrollable
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  // Space between items

                  children: [
                    SizedBox(width: 20),
                    Column(
                      children: [
                        Container(
                          width: 100, // Square dimensions
                          height: 100,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/product.jpg'),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(10), // Rounded corners (optional)
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'John Doe',
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),

                    SizedBox(width: 20), // Space between items

                    Column(
                      children: [
                        Container(
                          width: 100, // Square dimensions
                          height: 100,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/product.jpg'),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(10), // Rounded corners (optional)
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'John Doe',
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),

                    SizedBox(width: 20), // Space between items

                    Column(
                      children: [
                        Container(
                          width: 100, // Square dimensions
                          height: 100,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/product.jpg'),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(10), // Rounded corners (optional)
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'John Doe',
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),

                    SizedBox(width: 20), // Space between items


                    Column(
                      children: [
                        Container(
                          width: 100, // Square dimensions
                          height: 100,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/product.jpg'),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(10), // Rounded corners (optional)
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'John Doe',
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),

                    SizedBox(width: 20), // Space between items
                    Column(
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/product.jpg'),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Jane Smith',
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(width: 20),
                    // Add more items as needed
                  ],
                ),
              ),

              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Best sellers',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    GestureDetector(
                      onTap: () {
                      },
                      child: Text(
                        'See All',
                        style: TextStyle(fontSize: 16, color: Colors.blue),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: GridView.count(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    children: List.generate(6, (index) {
                      return Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 10,
                              offset: Offset(0, 10),
                            ),
                          ],
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white, // Background color for the bottom part
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Top half: Image
                            Container(
                              height: 100, // Adjust height as needed
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
                                image: DecorationImage(
                                  image: AssetImage('assets/product.jpg'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            // Bottom half: Product name and price
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Asal no dodasi',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    '1,000,000 sums pre jar',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.green,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
                  ),
                ),
              ),


            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
