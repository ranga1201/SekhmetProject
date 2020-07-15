import 'package:flutter/material.dart';
import './taskData.dart';
import 'package:intl/intl.dart';

class TaskList extends StatelessWidget {
  final List task;
  TaskList(this.task);
  Widget build(BuildContext context) {
    return Container(
      height: 280,
      child: ListView.builder(
          itemBuilder: (ctx, index) {
            return Card(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                        children: <Widget>[
                          Container(
                            child: Text(task[index].title,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Theme
                                      .of(context)
                                      .primaryColor),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(
                              vertical: 10,
                              horizontal: 10,
                            ),

                            padding: EdgeInsets.all(10),

                            child: Text(
                                task[index].description,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Theme
                                        .of(context)
                                        .primaryColorDark
                                )
                            ),
                          ),
                        ]
                    ),
                    Text(DateFormat.yMMMd().format(task[index].date),
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 10,
                            color: Theme
                                .of(context)
                                .primaryColorLight
                        )
                    ),

                  ]
              ),
            );
          },
          itemCount: task.length
      ),
    );
  }
}