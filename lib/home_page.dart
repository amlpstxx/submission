import 'package:flutter/material.dart';
import 'package:myapp/login_page.dart';
import 'package:myapp/register_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFFEF9A9A),
              Color(0xFFE57373),
            ]
          ),
        ),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 100.0),
            child: Image(
              height: 100,
              width: 350,
              image: AssetImage("assets/images/bag.png")),
            ),
            const SizedBox(
              height: 50,
            ),
            const Text("Welcome Back", style: TextStyle(
              fontSize: 30,
              color: Colors.black,
            ),
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                MaterialPageRoute(builder: (context) => LoginPage()));
              },
              child: Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Colors.white),
                ),
                child: const Center(
                  child: Text("LOGIN", style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),),
                ),
              ),
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                MaterialPageRoute(builder: (context) => RegisterPage()));
              },
              child: Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Colors.white),
                ),
                child: const Center(
                  child: Text("SIGN UP", style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),),
                ),
              ),
            ),
            SizedBox(height: 120),
            const Text("Login with Social Media", style: TextStyle(
              fontSize: 17,
              color: Colors.white,
            ),),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/icons/pngtree-instagram-black-amp.png",
                height: 44,
                width: 42,
                ),
                Image.asset("assets/icons/vecteezy_facebook-apps-icon_19874345.png",
                height: 33,
                width: 40,
                ),
                Image.asset("assets/icons/twitter-x-logo-0339F999CF-seeklogo.com.png",
                height: 30,
                width: 42,
                ),
              ]
                ),
              ],
            )
              )
            );
  }
}