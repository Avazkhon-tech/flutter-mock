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
                  padding: EdgeInsets.only(top: 20),
                  child: Text(
                    "MU University",
                    style: TextStyle(
                      color: Color(0xFFDC3838),
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "Get Started",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  "Please enter username to continue",
                  style: TextStyle(color: Colors.white70),
                ),
              ),
              const SizedBox(height: 20),
              const TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person_2_outlined, color: Colors.white),
                  labelText: 'Create email',
                  labelStyle: TextStyle(color: Colors.white70),
                  filled: true,
                  fillColor: Colors.white10,
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20),
              const TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person_4_rounded, color: Colors.white),
                  labelText: 'Enter your name',
                  labelStyle: TextStyle(color: Colors.white70),
                  filled: true,
                  fillColor: Colors.white10,
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20),
              const TextField(
                obscureText: true,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock, color: Colors.white),
                  labelText: 'Create password',
                  labelStyle: TextStyle(color: Colors.white70),
                  filled: true,
                  fillColor: Colors.white10,
                  border: OutlineInputBorder(),
                  suffixIcon: Icon(Icons.visibility, color: Colors.white70),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFDC3838),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                ),
                child: const Text(
                  "Continue",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
              const SizedBox(height: 20),
              const Center(
                child: Text(
                  "Have an account?",
                  style: TextStyle(color: Colors.white70),
                ),
              ),
              const Center(
                child: Text(
                  "Sign in",
                  style: TextStyle(color: Color(0xFFDC3838), fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
