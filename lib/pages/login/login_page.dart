import 'package:flutter/material.dart';
import 'package:ui_creation/pages/news/news_page.dart';
import 'package:ui_creation/pages/register/register_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Expanded(
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
                      "Welcome back",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                    const Text(
                      "Please enter username to continue",
                      style: TextStyle(color: Colors.white),
                    ),
                    const SizedBox(height: 20),
                    const TextField(
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey, width: 1),
                        ),
                        prefixIcon: Icon(Icons.email),
                        hintStyle: TextStyle(color: Colors.grey),
                        labelStyle: TextStyle(color: Colors.grey),
                        labelText: 'Enter your email',
                        hintText: "avazxon@gmail.com",
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(height: 20),
                    const TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey, width: 1),
                        ),
                        hintStyle: TextStyle(color: Colors.grey),
                        labelStyle: TextStyle(color: Colors.grey),
                        labelText: 'Enter your password',
                        hintText: "Avazxon",
                        suffixIcon: Icon(Icons.remove_red_eye),
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'Forgot password?',
                          style: TextStyle(color: Colors.red),
                        )
                      ],
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFDC3838),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                  ),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(
                        builder: (context) => const NewsPage(),
                      ));
                    },
                    child: const Text(
                      "Continue",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Dont have an account?",
                    style: TextStyle(color: Colors.white),
                  ),
                  const SizedBox(width: 20),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(
                        builder: (context) => const RegisterPage(),
                      ));
                    },
                    child: const Text(
                      "Sign Up",
                      style: TextStyle(color: Color(0xFFDC3838)),
                    ),
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
