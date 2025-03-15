import 'package:flutter/material.dart';

class CustomFontSagesScreen extends StatelessWidget {
  const CustomFontSagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Custom font")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text("Hello World", style: TextStyle(fontFamily: 'fontLight', fontSize: 18, color: Colors.black))),
          Center(child: Text("Hello World", style: TextStyle(fontFamily: 'fontMedium',fontSize: 18, color: Colors.black))),
          Center(child: Text("Hello World", style: TextStyle(fontFamily: 'fontBold', fontSize: 18,color: Colors.black)))
        ],
      ),
    );
  }
}
