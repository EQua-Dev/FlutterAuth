import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Home extends StatelessWidget {
  // const Home({Key key, this.user}): super(key: key);
  // User user = FirebaseAuth.instance.currentUser;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Text ("Welcome ${FirebaseAuth.instance.currentUser.email}", textAlign: TextAlign.center, style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
      )
      // StreamBuilder<DocumentSnapshot>(
      //   stream: FirebaseFirestore.instance.collection("users").doc(user.uid).snapshots(),
      //     builder: (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot){
      //     if(snapshot.hasError){
      //       return Text('Error: ${snapshot.error}');
      //     }
      //     switch(snapshot.connectionState){
      //       case ConnectionState.waiting: return Text('Loading...');
      //       default:
      //         return Text(snapshot.data['name']);
      //     }
      //     },
      // ),
    );
  }
  //
  // Center checkRole(DocumentSnapshot snapshot){
  //   if(snapshot.data["role"]  == 'admin'){
  //     return adminPage(snapshot);
  //   }else{
  //     return userPage(snapshot);
  //   }
  // }
  }

