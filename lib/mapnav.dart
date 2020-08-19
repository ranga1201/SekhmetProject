import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import'./route.dart';
class MyMap extends StatefulWidget {

  @override
  _MyMapState createState() => _MyMapState();
}


class _MyMapState extends State<MyMap> {
  /*void control(String txtitle, String txdes) {
    final newTx = route(
      title: txtitle,
      description: txdes,

    );
    setState(() {
      route.add(newTx);}
    );
  }
  final fromController = TextEditingController();

  final toController = TextEditingController();

  void submit()
  { String enteredT = fromController.text;
  String enteredA = toController.text;
  if(enteredT.isEmpty || enteredA.isEmpty){
    return;
  }
  widget.control(enteredT, enteredA);
  Navigator.of(context).pop();
  }*/
  //GoogleMapController mapController;
  Completer<GoogleMapController> mapController=Completer();
  final LatLng _center = const LatLng(45.521563, 74.0060);

  void _onMapCreated(GoogleMapController controller) {
    mapController.complete(controller);
  }
  Widget build (BuildContext context)
  {
    return Scaffold(
      body:

        GoogleMap(
          onMapCreated: _onMapCreated,
          initialCameraPosition: CameraPosition(
            target: _center,
            zoom: 12,
          ),
        )


      );

  }
}

