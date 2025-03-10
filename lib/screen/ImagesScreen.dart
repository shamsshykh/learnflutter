import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImagesScreen extends StatelessWidget {
  const ImagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Load Images From Asserts")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: double.infinity,
            height: 300,
            child:  Container(child: Image.asset("asserts/images/door.png")),
          ),

          SizedBox(height: 50),

          SizedBox(
            width: double.infinity,
            height: 300,
            child:  Container(child: Image.asset("asserts/images/Screenshot.png")),
          )
        ],
      ),
    );
  }
}
