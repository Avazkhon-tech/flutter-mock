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
      title: 'My Cool App',
      home: const MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  bool isClicked = false;

  void toggleButton() {
    setState(() {
      isClicked = !isClicked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main Page'),
        backgroundColor: Colors.blue,
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 10, top: 10),
            child: const Ribbon(),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'ElevatedButton in a Complex UI',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            // Disabled "Add Item" button
            ElevatedButton(
              onPressed: null,
              style: ElevatedButton.styleFrom(
                disabledBackgroundColor: Colors.grey[200],
                disabledForegroundColor: Colors.grey,
              ),
              child: const Text('+ Add Item'),
            ),
            const SizedBox(height: 20),
            // Toggling ElevatedButton
            ElevatedButton(
              onPressed: toggleButton,
              style: ElevatedButton.styleFrom(
                backgroundColor: isClicked ? Colors.redAccent : Colors.blue,
                foregroundColor: Colors.white,
                padding:
                const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              ),
              child: Text(isClicked ? 'Clicked!' : 'Click Me!'),
            ),
            const SizedBox(height: 20),
            // Gradient Button using Ink
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                foregroundColor: Colors.purple,
                backgroundColor: Colors.grey
              ),
              child: const Text('Gradient Button'),
            ),
            const SizedBox(height: 20),
            // Status Text
            Text(
              isClicked ? 'Button clicked! (Toggled)' : 'Button is not clicked!',
              style: const TextStyle(fontStyle: FontStyle.italic),
            ),
          ],
        ),
      ),
    );
  }
}

class Ribbon extends StatelessWidget {
  const Ribbon({super.key});

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -0.785398, // 45 degrees in radians

    );
  }
}
