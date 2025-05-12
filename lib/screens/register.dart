import 'package:flutter/material.dart';
import 'package:flutter_application_1/services/authservices.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController emailController =TextEditingController();
  TextEditingController passwordController =TextEditingController();
  TextEditingController usernameController =TextEditingController();
  TextEditingController confirmController =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset("assets/artificial.jpg", fit: BoxFit.cover),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.arrow_back_ios),
                    ),
                  ),
                  Text(
                    "Hello !,Register",
                    style: TextStyle(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      fontSize: 23,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                  Text(
                    "to get started",
                    style: TextStyle(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      fontSize: 23,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                  SizedBox(height: 25),
                  TextField(
                    controller:usernameController ,
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.account_circle),
                      ),
                      filled: true,
                      fillColor: Colors.grey,
                      hintText: "create username",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.account_circle),
                      ),
                      filled: true,
                      fillColor: Colors.grey,
                      hintText: "Email address",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  TextField(
                    controller: passwordController,
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.visibility),
                      ),
                      filled: true,
                      fillColor: Colors.grey,
                      hintText: "enter password",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  TextField(
                    controller: confirmController,
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.visibility),
                      ),
                      filled: true,
                      fillColor: Colors.grey,
                      hintText: "confirm password",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),

                  SizedBox(height: 15),
                  Row(
                    children: [
                      Expanded(
                        child: Divider(
                          color: Colors.grey,
                          thickness: 2,
                          indent: 2,
                          endIndent: 2,
                        ),
                      ),
                      Text(
                        "or register with",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      Expanded(
                        child: Divider(
                          color: Colors.grey,
                          thickness: 2,
                          indent: 2,
                          endIndent: 2,
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 10),

                  SizedBox(
                    height: 32,
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {signup(
                        email: emailController.text,
                         password: passwordController.text,
                          confrmpass: confirmController.text,
                           username: usernameController.text,
                            context: context);},
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.black,
                      ),
                      child: Text("register"),
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
}
