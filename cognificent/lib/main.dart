import 'package:flutter/material.dart';
import'./PatientList.dart';
import './HomePage.dart';
import './Appointment.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        debugShowCheckedModeBanner: false,
        home: new MyHomePage(),
        theme: ThemeData(
            textTheme: GoogleFonts.ralewayTextTheme(
                Theme.of(context).textTheme),
            appBarTheme: AppBarTheme(
                textTheme: ThemeData.dark().textTheme.copyWith(
                    title: TextStyle(
                      fontFamily: 'robotomono',
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    )
                )
            ),
            backgroundColor: Colors.greenAccent,
            primaryColor: Colors.tealAccent,
            accentColor: Colors.blueAccent
        )
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int curIndex = 0;
  List <Widget> page = [
    HomePage(),
    //PatientList(),
    Appointment(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      curIndex = index;
    });
  }


    @override
    Widget build(BuildContext context) {
      print(curIndex);
      return new Scaffold(
        backgroundColor: Color(0xff84FFFF),
        appBar: AppBar(
            title: Text('Cognificent!')),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: curIndex,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white70,
          iconSize: 20,
          unselectedFontSize: 15,
          selectedFontSize: 20,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),
            ),
            //BottomNavigationBarItem(
             // icon: Icon(Icons.list),
             // title: Text('Patient List'),
           // ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_pin),
              title: Text('Appointments'),
            ),
          ],
          onTap: _onItemTapped,
        ),
        body: Center(
          child: page.elementAt(curIndex),
        ),
      );
    }
  }
