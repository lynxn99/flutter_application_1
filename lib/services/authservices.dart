import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> signup({
  required String email,
  required String password,
  required String confrmpass,
  required String username,
  required BuildContext context,
}) async {
  try {
    UserCredential userCredential = await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email, password: password);
    User? user = userCredential.user;
    await FirebaseFirestore.instance.collection('users').doc(user?.uid).set({
      'Email': email,
      'Username': username,
    });
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(" Registered successfully")));
  } catch (e) {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(e.toString())));
  }
}




Future<void> signin({
  required String email,
  required String password,
  required BuildContext context,
}) async {
  try {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text("logged in successfully")));
  } catch (e) {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(e.toString())));
  }
}




Future<void> reset({
  required String email,
  required  BuildContext context,
}) async{
  try{
    await  FirebaseAuth.instance.sendPasswordResetEmail(email: email);
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("check your inbox")));

  }
  catch(e)
{
  ScaffoldMessenger.of(context,).showSnackBar(SnackBar(content: Text(e.toString())));
}
}