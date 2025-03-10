import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:fluttertoast/fluttertoast.dart';

class UserPermission extends StatelessWidget {
  const UserPermission({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("Learn Flutter"), centerTitle: true),
      backgroundColor: Colors.cyan,
      body: Padding(
        padding: EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              onPressed: cameraPermission,
              child: Text("Camera Permission"),
            ),
            ElevatedButton(
              onPressed: galleryPermission,
              child: Text("Gallery Permission"),
            ),
            ElevatedButton(
              onPressed: locationPermission,
              child: Text("Location Permission"),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> cameraPermission() async {
    var status = await Permission.camera.request();
    if (status == PermissionStatus.granted) {
      Fluttertoast.showToast(msg: "Permission Granted");
    } else if (status == PermissionStatus.denied) {
      Fluttertoast.showToast(msg: "Permission not Granted");
    } else if (status == PermissionStatus.permanentlyDenied) {
      Fluttertoast.showToast(msg: "Permission permanently Denied");
      openAppSettings();
    }
  }

  Future<void> galleryPermission() async {
    var status = await Permission.camera.request();
    if (status == PermissionStatus.granted) {
      Fluttertoast.showToast(msg: "Permission Granted");
    } else if (status == PermissionStatus.denied) {
      Fluttertoast.showToast(msg: "Permission not Granted");
    } else if (status == PermissionStatus.permanentlyDenied) {
      Fluttertoast.showToast(msg: "Permission permanently Denied");
      openAppSettings();
    }
  }

  Future<void> locationPermission() async {
    var status = await Permission.location.request();
    if (status == PermissionStatus.granted) {
      Fluttertoast.showToast(msg: "Permission Granted");
    } else if (status == PermissionStatus.denied) {
      Fluttertoast.showToast(msg: "Permission not Granted");
    } else if (status == PermissionStatus.permanentlyDenied) {
      Fluttertoast.showToast(msg: "Permission permanently Denied");
      openAppSettings();
    }
  }
}
