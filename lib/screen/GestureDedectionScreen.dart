import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class GestureDedectionScreen extends StatelessWidget {
  const GestureDedectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Gesture')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              child: Text("Click me by GestureDetector"),
              onTap: (){
                Fluttertoast.showToast(msg: "Click Text");
              }
            ),
            SizedBox(height: 100),
            InkWell( // give in an animation white tapping
              onLongPress: (){
                Fluttertoast.showToast(msg: "Long Press by InkWell");
              },
              child: Text("Long Press"),
            ),



          ],
        ),
      ),


    );
  }
}
