import 'package:flutter/material.dart';

class NewTask extends StatefulWidget{
  final Function control;

  NewTask(this.control);

  @override
  _NewTaskState createState() => _NewTaskState();
}

class _NewTaskState extends State<NewTask> {
  final titleController = TextEditingController();

  final desController = TextEditingController();

  void submit()
  { String enteredT = titleController.text;
  String enteredA = desController.text;
  if(enteredT.isEmpty || enteredA.isEmpty){
    return;
  }
  widget.control(enteredT, enteredA);
  Navigator.of(context).pop();
  }

  Widget build(BuildContext context){
    return Card(
        elevation:10,
        child:Container(
            width: double.infinity,
            padding:EdgeInsets.all(10),
            child:Column(
              children: <Widget>[
                TextField(decoration: InputDecoration(labelText: 'Title'),
                  controller:titleController,
                  keyboardType: TextInputType.text,
                  onSubmitted:(_)=>submit( ),
                ),
                TextField(decoration: InputDecoration(labelText: 'Description'),
                  controller:desController,
                  keyboardType: TextInputType.text,
                  onSubmitted:(_)=>submit(),
                ),
                RaisedButton(

                  child:Text('Add Task',
                      style: Theme.of(context).textTheme.title
                  ),
                  textColor: Colors.black,
                  onPressed:submit ,
                )
              ],
            ))

    );
  }
}