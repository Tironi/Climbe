import 'package:flutter/material.dart';
import 'package:mapbox_gl/mapbox_gl.dart';

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {


  late MapboxMapController mapController;

  void _onMapCreated(MapboxMapController controller) async {
    mapController = controller;
  }
  
  //Bergamo Centro
  final _initalCameraPosition = const CameraPosition(
    target: LatLng(45.68947633151819, 9.689050912857056),
    zoom: 17,
  );

    //Public access token
  final String _accesToken =
      "pk.eyJ1IjoiY2xpbWJlIiwiYSI6ImNsNTZxcTRzZDFscTEzbm83MDZ1ZWZ5cXYifQ.imSV_v5mAxkBbGg8C81oPQ";

  @override
  Widget build(BuildContext context) {
    return MapboxMap(
      tiltGesturesEnabled: false,
      onMapCreated: _onMapCreated,
      styleString: MapboxStyles.LIGHT,
      initialCameraPosition: _initalCameraPosition,
      accessToken: _accesToken,
      myLocationEnabled: true,
      myLocationRenderMode: MyLocationRenderMode.COMPASS,
      myLocationTrackingMode: MyLocationTrackingMode.Tracking,
    );
  }
}