import'package:flutter/material.dart';
import'package:cloud_firestore/cloud_firestore.dart';
import'package:firebase_storage/firebase_storage.dart';
import'package:firebase_database/firebase_database.dart';
import 'package:flutter_sparkline/flutter_sparkline.dart';
import 'dart:math';
class pulseGraph extends StatefulWidget {
  pulseGraphState createState() => pulseGraphState();
}

class pulseGraphState extends State<pulseGraph> {

 List graph(){
   List <int> datalist=[];
   Random rnd;
  // DatabaseReference ref = FirebaseDatabase.instance.reference();
  // ref.child('pulse').once().then((DataSnapshot snap){
     //Map<dynamic, dynamic> values = snap.value;
    // values.forEach((key, values) {
      // datalist.add(values);
     //});
  // });
   int min = 70;
   int max = 120;
   rnd = new Random();
   int r = min + rnd.nextInt(max - min);
   for (int i = 0; i<50 ; i++)
     {  int r = min + rnd.nextInt(max - min);
       datalist.add(r);}
   var listDouble = datalist.map((i) => i.toDouble()).toList();
   print(listDouble);
   return listDouble;
 }


  Widget build(BuildContext context){
    return Card(
      child:Expanded( child:
      Sparkline(
        data:graph(),
        pointsMode: PointsMode.all,
        lineColor: Colors.red[500],
        //fillMode: FillMode.below,
        fillColor: Colors.redAccent[200],
        pointSize: 5.0,
        pointColor: Colors.white,

      ),
      ),
    );
  }
}

