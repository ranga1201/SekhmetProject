import 'package:flutter/cupertino.dart';
import'package:flutter/material.dart';
import './tasks.dart';

class HomePage extends StatefulWidget {
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  final double gpsX = 60;
  final double gpsY = 80;
  double battery=100;
  Widget batteryStatus;
  double pulse = 120;
  Widget statusAns;
  Widget pulseStat;
  String image;

  Widget status() {
    if (gpsX == 80 && gpsY == 80) {
      statusAns = Text(
          'At home',
          style: TextStyle(
              fontSize: 20,
            color: Colors.lightGreen,
          )
      );
      image = 'assets/images/ic_home_48px-512.png';
    }
    else {
      statusAns = Text(
          'Outdoors',
          style: TextStyle(
            fontSize: 20,
            color: Colors.red,
          )
      );
      image = 'assets/images/steps.png';
    }
    return statusAns;
  }

  Widget pulseAns() {
    if (100 < pulse && pulse < 120)
      pulseStat =  Text('Normal',
            style:TextStyle(
              color: Colors.lightGreen,
              fontSize: 20,
              fontWeight: FontWeight.w400,
            )
      );
    else if (pulse < 80)
      pulseStat =  Text('Low!Needs attention',
            style:TextStyle(
              color: Colors.amber,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            )
      );
    else
      pulseStat =  Text('High! Possibility of an anxiety attack',
            style:TextStyle(
              color: Colors.red,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            )
      );
    return pulseStat;
  }
 Widget charge()
 {
   if (battery>80) {
     batteryStatus = Text(
         'Optimal Charge - $battery%',
         style: TextStyle(
           fontSize: 20,
           color: Colors.lightGreen,
         )
     );
   }
   else if (battery < 80 && battery > 40) {
     batteryStatus = Text(
         '$battery%',
         style: TextStyle(
           fontSize: 20,
           color: Colors.amber,
         )
     );
   }
   else {
     batteryStatus = Text(
         'Low battery $battery%',
         style: TextStyle(
           fontSize: 20,
           color: Colors.red,
         )
     );
   }
   return batteryStatus;
 }
  Widget build(BuildContext context) {
    return new Scaffold(
      body: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(10),
                  child: Center(
                    child: Text(
                      'Greetings!',
                      style: TextStyle(
                        fontSize: 50.0,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.normal,
                      ),
                    ),

                  )
              ),
              Card(
                  elevation: 20,
                  child: Row(

                    children: <Widget>
                    [ Container(
                          margin: EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 10,
                          ),

                          padding: EdgeInsets.all(10),
                          child: Column(
                              children: <Widget>[
                                Text(
                                    'Where is the patient?',
                                    style: TextStyle(
                                        fontSize: 25
                                    )
                                ),
                                status(),
                              ]
                          )
                      ),
                      Expanded(
                          child: Container(
                            width: 60,
                            height: 60,
                            child: Image.asset(image),
                          )
                      )
                    ],
                  )
              ),
              Card(
                margin: EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 10)
                ,
                elevation: 20,
                child:
              Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text(
                              'Pulse',
                              style: TextStyle(
                                fontSize: 25,
                              ),

                        ),
                        Container(
                            padding: EdgeInsets.all(15),
                            width: double.infinity,
                            child:Center(
                            child: Text(
                                'Graph',
                                style: TextStyle(
                                  fontSize: 80,
                                )
                            )
                        )
                        ),
                        pulseAns(),

                      ]
                  )
              ),
              ),
              Card(
                margin: EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 10),
                elevation: 20,
                child:Container(
                  width:double.infinity,

              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(
                  'Battery Status',
                    style:TextStyle(
                  fontSize: 25,
              )
                ),
                charge(),
                ]
              ),

 ),
              ),
            ]

        ),
      ),

    );
  }
}
