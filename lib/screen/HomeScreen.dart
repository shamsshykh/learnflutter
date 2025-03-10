import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      appBar: AppBar(title: Text("Learn Text Styling And Button Style")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Hello World",
              style: TextStyle(
                color: Colors.black,
                decoration: TextDecoration.underline,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextButton(
              onPressed: () {
                Fluttertoast.showToast(msg: "Button Click");
              },
              child: Text("Text Button"),
              onLongPress: () {
                Fluttertoast.showToast(msg: "Button long Click");
              },
            ),
            ElevatedButton(onPressed: () {}, child: Text("Text Button", style: TextStyle(decoration: TextDecoration.underline))),
            OutlinedButton(onPressed: (){}, style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.amber)), child: Text("OutLine Button"))
          ],
        ),
      ),
    );
  }
}
