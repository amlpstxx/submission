import 'package:flutter/material.dart';
import 'package:myapp/on_pages.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 100.0,
            left: 25.0,
            child: IconButton(onPressed: () {Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back),
            ),),
          Container(
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
      child: const Padding(
        padding: EdgeInsets.only(top: 90, left: 22),
        child: Text("Creat Your\n Account", style: TextStyle(
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
                    label: Text('Full Name', style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF26C6DA),
                    ),
                    ),
                  ),
                ),
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
                TextField(
                  decoration: InputDecoration(
                   suffixIcon: Icon(Icons.visibility_off, color: Colors.grey,), 
                    label: Text('Confirm Password', style: TextStyle(
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
                  child: Text("SIGN UP", style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),),
                ),
              ),
            ),
                SizedBox(height: 30),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text("Already have an account?"),
                      Text("Login",
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