import'package:flutter/material.dart';
import'package:cloud_firestore/cloud_firestore.dart';
import'package:firebase_storage/firebase_storage.dart';
import'package:firebase_database/firebase_database.dart';
import 'package:flutter_sparkline/flutter_sparkline.dart';

class pulseGraph extends StatefulWidget {
  pulseGraphState createState() => pulseGraphState();
}

class pulseGraphState extends State<pulseGraph> {

 List initState(){
   List <int> datalist=[];
   DatabaseReference ref = FirebaseDatabase.instance.reference();
   ref.child('pulse').once().then((DataSnapshot snap){
     Map<dynamic, dynamic> pulsevalue = snap.value;
     //pulsevalue.forEach((key, value) {print(value);});
     datalist = ((pulsevalue.values).cast<int>()).toList();
   });
   print(datalist);
   return datalist;
 }


  Widget build(BuildContext context){
    return Card(
      child: Sparkline(
        data:initState().cast(),
        pointsMode: PointsMode.all,
        pointColor: Color(hashCode),

      ),

    );
  }
}

