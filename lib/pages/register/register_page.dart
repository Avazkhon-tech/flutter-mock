import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(color: Colors.black),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: ListView(
            children: [
              const Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage("assets/logo.jpg"),
                  radius: 50,
                ),
              ),
              Container(
                alignment: Alignment.center,
                child: const Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: Text(
                    "MU University",
                    style: TextStyle(
                        color: Color(0xFFDC3838), fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const Text(
                "data",
                style: TextStyle(color: Colors.white),
              ),
              const SizedBox(height: 20),
              const TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email),
                  labelText: 'Create email',
                  hintText: "avazxon@gmail.com",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20),
              const TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  labelText: 'Enter your name',
                  hintText: "Nazirov",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20),
              const TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  labelText: 'Create password',
                  hintText: "Avazxon",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                  child: const Text("Sign up")),
              const SizedBox(height: 20),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account?"),
                  SizedBox(width: 20),
                  Text(
                    "Log in",
                    style: TextStyle(color: Colors.blue),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
