import 'package:flutter/material.dart';
class Report extends StatefulWidget {
  String title;
  String report;
  String pulse;
  Report({this.title, this.report, this.pulse});
  @override
  _ReportState createState() => _ReportState();
}
class _ReportState extends State<Report> {

  //TimeOfDay _startTime = TimeOfDay(hour:int.parse(time.split(":")[0]),minute: int.parse(time.split(":")[1]));

  @override

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: Column(
            children: <Widget>[
              Text(
                widget.title,
                style: TextStyle(
                  fontSize: 30.0,
                ),
              ),

              SizedBox(
                height: 30.0,
                child: Text(
                  widget.report,
                ),
              ),

              Card(
                child: Image.network(
                  widget.pulse,
                  height: 350.0,
                ),
              ),
              Row(
                children: <Widget>[
                  SizedBox(
                    width: 100.0,
                  ),
                  Expanded(
                    child: FlatButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child:Text(
                            'Go Back',
                            style: TextStyle(
                              fontSize: 30.0,
                            )
                        )
                    ),
                  ),
                  SizedBox(
                    width: 100.0,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}