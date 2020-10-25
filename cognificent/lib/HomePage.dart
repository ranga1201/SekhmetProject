import 'package:cognificent/PatientList.dart';
import 'package:flutter/material.dart';
import './main.dart';

class HomePage extends StatefulWidget {
  HomePageState createState() => HomePageState();

}

class HomePageState extends State<HomePage>{

  Widget build(BuildContext context)
  {
    return Scaffold(
      backgroundColor: Color(0XFF21BFBD),
      body:
      ListView(
        children : <Widget>[

          Padding(
            padding: EdgeInsets.only(top:15 , left: 10),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget> [

                Text(
                    'Cognize!',
                style: TextStyle(
                  fontSize: 50,
                  color: Colors.white,
                  fontFamily:'Montserrat'
                ),
          ),
              Container(
                width: 60,
                height: 60,
                child: Image.asset('assets/images/brain.jpeg'),
              )
              ],
          )
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: EdgeInsets.only(left:40.0),
            child:Text(
              'Hello Dr.Sen',
              style: TextStyle(
                  fontSize: 75,
                  color: Colors.white,
                  fontFamily:'Montserrat'
              ),
            )
          ),
          SizedBox(height: 40,),
          Container(
          height: MediaQuery.of(context).size.height -185 ,
          child:
          Column( children : <Widget>[

            Container(
                height: 50 ,
                decoration: BoxDecoration(
                  color: Colors.white70,
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(75.0)),

                ),
                child: FlatButton(
                    onPressed:() { Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PatientList()),
                    );
                    },
                    child: Text('Patient Count : 15',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontFamily: 'Montserrat'
                        )
                    )
                )
            ),
            Container(
                height: 50 ,
                decoration: BoxDecoration(
                  color: Colors.white38,
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(75.0)),

                ),
                child: Column(

                    children: [
                      Text('Reports updated as on 10/26',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          )
                      ),
                      Text('10',
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.black,
                          )
                      ),
                    ]
                )
            ),
            Container(
                height: 50 ,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(75.0)),

                ),
              child: FlatButton(
                onPressed:() { Navigator.push(
                context,MaterialPageRoute(builder: (context) => PatientList()),);
                    },
                  child: Text('Upcoming Appointments:2',
                            style: TextStyle(
                              fontSize: 20,
                                color: Colors.black,
                                fontFamily: 'Montserrat'
                              )
  )
    )
            )
    ]
          )
          ),
          ]

    ),


    );


  }
}