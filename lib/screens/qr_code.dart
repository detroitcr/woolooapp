import 'dart:developer';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:internapp/models/Restaurant/restaurant_data.dart';
import 'package:internapp/screens/home_screen.dart';
import 'package:internapp/widgets/restaurant_widget.dart';
import 'package:internapp/widgets/tab_bar_widget.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class QrCodeScan extends StatefulWidget {
  const QrCodeScan({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _QrCodeScanState();
}

class _QrCodeScanState extends State<QrCodeScan> {
  Barcode? result;
  QRViewController? controller;
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  int isScreenPushed = 0;

  // In order to get hot reload to work we need to pause the camera if the platform
  // is android, or resume the camera if the platform is iOS.
  @override
  void reassemble() {
    super.reassemble();
    if (Platform.isAndroid) {
      controller!.pauseCamera();
    }
    controller!.resumeCamera();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          color: Colors.white,
          onPressed: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) {
              return AppHomeScreen();
            }));
          },
        ),
      ),
      body: _buildQrView(context),
    );
  }

  Widget _buildQrView(BuildContext context) {
    // For this example we check how width or tall the device is and change the scanArea and overlay accordingly.
    var scanArea = (MediaQuery.of(context).size.width < 400 ||
            MediaQuery.of(context).size.height < 400)
        ? 150.0
        : 300.0;
    // To ensure the Scanner view is properly sizes after rotation
    // we need to listen for Flutter SizeChanged notification and update controller
    return QRView(
      key: qrKey,
      onQRViewCreated: _onQRViewCreated,
      overlay: QrScannerOverlayShape(
          borderColor: Colors.red,
          borderRadius: 10,
          borderLength: 30,
          borderWidth: 10,
          cutOutSize: scanArea),
      onPermissionSet: (ctrl, p) => _onPermissionSet(context, ctrl, p),
    );
  }

  void _onQRViewCreated(QRViewController controller) {
    setState(() {
      this.controller = controller;
    });

    controller.scannedDataStream.listen((scanData) {
      setState(() {
        result = scanData;
        if (isScreenPushed == 0) {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return TabBarWidget(
              //test code
              data: RestaurantData(
                name: 'Stanza',
                image: 'assets/images/restaurant1.jpg',
                location: 'CP',
                distance: '3 km',
                timing: '8:00 A.M to 8 :00 P.M',
                categories: 'Western',
              ),
            );
          })).then((value) => isScreenPushed = 0);
        }
        isScreenPushed += 1;
      });
    });
  }

  void _onPermissionSet(BuildContext context, QRViewController ctrl, bool p) {
    log('${DateTime.now().toIso8601String()}_onPermissionSet $p');
    if (!p) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('no Permission')),
      );
    }
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
}
