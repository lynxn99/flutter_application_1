import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset("assets/artificial.jpg", fit: BoxFit.cover),
          ),
          Align(alignment: Alignment.topCenter,
          child:  Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
          Text("Hello Register",style: TextStyle(color:const Color.fromARGB(255, 255, 255, 255) ,fontSize: 23,fontWeight: FontWeight.w200),),
          Text("to get started",style: TextStyle(color:const Color.fromARGB(255, 255, 255, 255) ,fontSize: 23,fontWeight: FontWeight.w200),),
          SizedBox(height: 25,),
          TextField(
            decoration: InputDecoration(
               suffixIcon: IconButton(onPressed: (){}, icon:Icon(Icons.account_circle)),
                filled: true,
               fillColor: Colors.grey,
                hintText: "create username",
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)))
               ),
               SizedBox(height: 15,),
          TextField(
            decoration: InputDecoration(
               suffixIcon: IconButton(onPressed: (){}, icon:Icon(Icons.account_circle)),
                filled: true,
               fillColor: Colors.grey,
                hintText: "Email address",
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)))
                 ),
                 SizedBox(height: 15,),
          TextField(
            decoration: InputDecoration(
               suffixIcon: IconButton(onPressed: (){}, icon:Icon(Icons.visibility)),
                filled: true,
               fillColor: Colors.grey,
                hintText: "enter password",
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)))
                ),
                SizedBox(height: 15,),
          TextField(
            decoration: InputDecoration(
               suffixIcon: IconButton(onPressed: (){}, icon:Icon(Icons.visibility)),
                filled: true,
               fillColor: Colors.grey,
                hintText: "confirm password",
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)))
                 ),
                 SizedBox(height: 15,),
                 
          ],
          ),
      ))
        ]));
  

  }
    
  }
