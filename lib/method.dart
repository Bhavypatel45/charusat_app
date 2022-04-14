import 'package:loginpage_123/login_firebase.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';


//CREATE LOGIN FUNCTION
Future<User?> logIn(String email, String password) async {

  await Firebase.initializeApp();

  FirebaseAuth _auth = FirebaseAuth.instance;
  FirebaseFirestore _firestore = FirebaseFirestore.instance;


  try {
    UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: email, password: password);


    print("Login Sucessfull");
    // _firestore
    //     .collection('users')
    //     .doc(_auth.currentUser!.uid)
    //     .get()
    //     .then((value) => userCredential.user!.updateDisplayName(value['name']));

    print(userCredential.user);

    return userCredential.user;
  } catch (e) {
    print(e);
    return null;
  }
}

//THIS IS FOR LOGOUT...
Future logOut(BuildContext context) async {
  FirebaseAuth _auth = FirebaseAuth.instance;

  try {
    await _auth.signOut().then((value) {
      Navigator.push(context, MaterialPageRoute(builder: (_) => LoginScreen()));
    });
  } catch (e) {
    print("error");
  }
}
