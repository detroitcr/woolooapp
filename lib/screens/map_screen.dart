import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:internapp/screens/home_screen.dart';
import 'package:internapp/screens/menu_screen.dart';

import 'package:internapp/screens/custom_bottom_navigationbar.dart';
import 'package:internapp/screens/profile/myaccount_screen.dart';
import 'package:internapp/screens/qr_code/qr_code.dart';

import 'package:internapp/widgets/text_widget.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  int currentTab = 0;
  final List<Widget> screens = [
    MapScreen(),
    AppHomeScreen(),
    MyAccountScreen(),
    MenuScreen(),
  ];

  Widget currentScreen = MapScreen();

  //Completer<GoogleMapController> _controller = Completer();
  late GoogleMapController _controller;

  //Location location = Location();
  static const _initialCameraPositon = CameraPosition(
    target: LatLng(28.6211, 77.0405),
    zoom: 15,
  );
  static final CameraPosition _localPosition =
      CameraPosition(target: LatLng(19.0760, 72.8777), zoom: 13);

  Marker? _origin;
  Marker? _destination;
  // @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: Padding(
            padding: EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                // for testing i put the routes of custom bottom navigation bar
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return CustomBottomNavigationBar();
                }));
              },
              child: CircleAvatar(
                radius: 2,
                backgroundImage: AssetImage('assets/images/logo.png'),
              ),
            ),
          ),
          title: MyText(
            text: 'WELCOME',
            size: 26,
            fontColor: Colors.black,
          ),
          actions: [
            IconButton(
              onPressed: () {},
              color: Colors.black,
              icon: Icon(Icons.search),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return QrCodeScan();
                }));
              },
              icon: Icon(Icons.qr_code),
              color: Colors.black,
            ),
          ],
        ),
        body: Stack(
          children: [
            GoogleMap(
              initialCameraPosition: _initialCameraPositon,
              myLocationButtonEnabled: false,
              myLocationEnabled: true,
              onMapCreated: (GoogleMapController controller) =>
                  _controller = controller,
              //  _controller.complete(controller);

              markers: {
                if (_origin != null) _origin!,
                if (_destination != null) _destination!
              },
              // custom marker
              onLongPress: _addMarker,
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: FloatingActionButton(
                onPressed: () {
                  _goToPosition();
                },
                child: Icon(Icons.center_focus_strong),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _addMarker(LatLng pos) {
    if (_origin == null || (_origin != null && _destination != null)) {
      setState(() {
        _origin = Marker(
          markerId: MarkerId('origin'),
          infoWindow: InfoWindow(title: 'Origin'),
          icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
          position: pos,
        );
      });
    } else {
      setState(() {
        _destination = Marker(
          markerId: MarkerId('destination'),
          infoWindow: InfoWindow(title: 'destination'),
          icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
          position: pos,
        );
      });
    }
  }

  Future<void> _goToPosition() async {
    //final GoogleMapController controller = await _controller.future;
    _controller.animateCamera(CameraUpdate.newCameraPosition(_localPosition));
  }
}

























// // GoogleMap(
// //         mapType: MapType.hybrid,
// //         initialCameraPosition: _kGooglePlex,
// //         onMapCreated: (GoogleMapController controller) {
// //           _controller.complete(controller);
// //         },
// //         myLocationEnabled: true,
// //       ),
// //       floatingActionButton: FloatingActionButton.extended(
// //         onPressed: _currentLocation,
// //         label: Text('My Location'),
// //         icon: Icon(Icons.location_on),
// //       ),
// //     );
// //   }





// // void _currentLocation() async {
// //    final GoogleMapController controller = await _controller.future;
// //    LocationData currentLocation;
// //    var location = new Location();
// //    try {
// //      currentLocation = await location.getLocation();
// //      } on Exception {
// //        currentLocation = null;
// //        }

// //     controller.animateCamera(CameraUpdate.newCameraPosition(
// //       CameraPosition(
// //         bearing: 0,
// //         target: LatLng(currentLocation.latitude, currentLocation.longitude),
// //         zoom: 17.0,
// //       ),
// //     ));
// //   