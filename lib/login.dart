import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(top: 5, left: 5, child: Icon(Icons.arrow_back_ios)),
          Positioned.fill(
            child: Image.asset("assets/beautiful.jpg", fit: BoxFit.cover),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text(
                    "WELCOME BACK",
                    style: TextStyle(
                      color: const Color.fromARGB(255, 0, 0, 0),
                      fontSize: 25,
                      fontWeight: FontWeight.w200,
                    ),
                  ),

                  SizedBox(height: 16),

                  TextField(
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.account_circle),
                      ),
                      filled: true,
                      fillColor: const Color.fromARGB(255, 255, 255, 255),
                      hintText: "enter username",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                  ),

                  SizedBox(height: 16),

                  TextField(
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.account_circle),
                      ),
                      filled: true,
                      fillColor: const Color.fromARGB(255, 255, 255, 255),
                      hintText: "password",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 240),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "forgot password?",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.yellow,
                        foregroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: Text("login"),
                    ),
                  ),

                  SizedBox(height: 16),
                  Row(
                    children: [
                      Expanded(
                        child: Divider(
                          color: Colors.grey,
                          thickness: 2,
                          endIndent: 2,
                          indent: 2,
                        ),
                      ),
                      Text(
                        "Or login with",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      Expanded(
                        child: Divider(
                          color: Colors.grey,
                          thickness: 2,
                          endIndent: 2,
                          indent: 2,
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 500),
                  Row(children: [loginfun("assets/facebook.jpg"), loginfun("assets/Aadhaar.png"), loginfun("google.png")]),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Don't have an account register now",
                      style: TextStyle(
                        color: const Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget loginfun(String imagepath) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        color: Colors.black,
        border: Border.all(color: Colors.amber),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: EdgeInsets.all(12),
        child: Image.asset(imagepath),
      ),
    );
  }
}
