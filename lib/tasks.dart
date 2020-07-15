import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import'./newTasks.dart';
import './taskData.dart';
import'./TaskList.dart';

class TaskPage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'tasks',
      home: MyTaskPage(),
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
          primaryColor: Colors.purple,
          primarySwatch: Colors.deepPurple,
          accentColor: Colors.blueAccent
      ),
    );
  }
}

class MyTaskPage extends StatefulWidget {
  State <StatefulWidget> createState() {
    return MyTaskPageState();
  }
}

class MyTaskPageState extends State <MyTaskPage> {
  final List<Tasks> task = [];
  void addNew(String txtitle, String txdes) {
    final newTx = Tasks(
      title: txtitle,
      description: txdes,
      date: DateTime.now(),

    );
    setState(() {
      task.add(newTx);}
    );
  }
  void startAddNewTask(BuildContext ctx)
  {
    showModalBottomSheet(context: ctx, builder: (_){
      return  GestureDetector(
        onTap: () {} ,
        child:NewTask(addNew),
        behavior: HitTestBehavior.opaque,
      );
    }
    );
  }
  Widget build(BuildContext context)
  { return Scaffold (
    body: SingleChildScrollView
      (child:
    Column(
      mainAxisAlignment:MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          width: double.infinity,
          child:
          Card(
            elevation: 20,
            child:Center(child:
          Text('Assign Tasks here',style : TextStyle (fontSize: 30)),),
          ),
        ),
        TaskList(task),

      ]
      ,
    ),
    ),
    floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    floatingActionButton: FloatingActionButton(
      child: Icon(Icons.add),
      onPressed: () => startAddNewTask(context),
    ),
  );
  }
}


