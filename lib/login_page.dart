import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:myapp/on_pages.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          
          Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF26C6DA),
              Color(0xFF01579B),
            ]
          ),
      ),
      child: const Padding(
        padding: EdgeInsets.only(top: 90, left: 30),
        child: Text("Hello\nLogin!", style: TextStyle(
          fontSize: 30,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 200),
        child: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40),
              topRight: Radius.circular(40),
            ),
            color: Colors.white,
          ),
          height: double.infinity,
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.only(left: 18.0, right: 18),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  decoration: InputDecoration(
                   suffixIcon: Icon(Icons.check, color: Colors.grey,), 
                    label: Text('Gmail', style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF26C6DA),
                    ),
                    ),
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                   suffixIcon: Icon(Icons.visibility_off, color: Colors.grey,), 
                    label: Text('Password', style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF26C6DA),
                    ),
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text("Forgot Password?", style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Color(0xFF26C6DA),),
                ),
                ),
                const SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                MaterialPageRoute(builder: (context) => OnPages()));
              },
              child: Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                 gradient: LinearGradient(colors: [
                       Color(0xFF26C6DA),
              Color(0xFF01579B),
                    ]),
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
                SizedBox(height: 70),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text("Don't have an account?"),
                      Text("Sign up",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF01579B),
                      ),),
                    ],
                  ),
                ),
              ],
            ),
          ),
          ),
      ),

        ],
      ),
    );
  }
}