import 'package:flutter/material.dart';
import 'package:flutter_application_1/services/authservices.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
TextEditingController emailController =TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(top: 5, left: 5, child: Icon(Icons.arrow_back_ios)),
          Positioned.fill(
            child: Image.asset("assets/photo.jpg", fit: BoxFit.cover),
          ),
          SizedBox(height: 10),
          Align(
            alignment: Alignment.topCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller: emailController,
                   decoration: InputDecoration(
                    suffixIcon: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.mail),
                    ),
                    filled: true,
                    hintText: "enter gmail address",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                ),

                SizedBox(height: 10),

                SizedBox(
                  child: ElevatedButton(
                    onPressed: () {
                      reset(email: emailController.text, context: context);
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),

                    child: Text("VERIFY"),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
