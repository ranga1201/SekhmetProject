import 'package:flutter/material.dart';

class Appointment extends StatefulWidget {
AppointmentState createState() => AppointmentState();

}

class AppointmentState extends State<Appointment> {

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF21BFBD),
      body:
      ListView(
          children: <Widget>[


            SizedBox(
              height: 25,
            ),
            Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  'Upcoming Appointments',
                  style: TextStyle(
                      fontSize: 75,
                      color: Colors.white,
                      fontFamily: 'Montserrat'
                  ),
                )
            ),
            SizedBox(height: 40,),
            Container(
              height: MediaQuery
                  .of(context)
                  .size
                  .height - 185,
              child:
              Column(children: <Widget>[

                Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(75.0)),

                  ),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Card(
                            child: Text('Ms. Clarke',
                              style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.black,
                                  fontFamily: 'Montserrat'
                              ),
                            )

                        ),
                        Card(
                          child: Column(children: [
                            Text('10/28/2020',
                              style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.black,
                                  fontFamily: 'Montserrat'
                              ),
                            ),
                            Text('16:30',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontFamily: 'Montserrat'
                              ),
                            )
                          ]
                          ),
                        ),
                      ]
                  ),
                ),
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white60,
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(75.0)),

                  ),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Card(
                            child: Text('Mr. Kapoor',
                              style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.black,
                                  fontFamily: 'Montserrat'
                              ),
                            )

                        ),
                        Card(
                          child: Column(children: [
                            Text('10/29/2020',
                              style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.black,
                                  fontFamily: 'Montserrat'
                              ),
                            ),
                            Text('17:30',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontFamily: 'Montserrat'
                              ),
                            )
                          ]
                          ),
                        ),
                      ]
                  ),

                )
              ]
              ),
            ),
          ]
      ),
    );
  }
}