import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MyMap extends StatefulWidget {

  @override
  _MyMapState createState() => _MyMapState();
}


class _MyMapState extends State<MyMap> {
  //GoogleMapController mapController;
  Completer<GoogleMapController> mapController=Completer();
  final LatLng _center = const LatLng(45.521563, 74.0060);

  void _onMapCreated(GoogleMapController controller) {
    mapController.complete(controller);
  }
  Widget build (BuildContext context)
  {
    return Scaffold(
      body:GoogleMap(
        onMapCreated: _onMapCreated,
        initialCameraPosition: CameraPosition(
          target: _center,
        ),
      )

    );
  }
}

