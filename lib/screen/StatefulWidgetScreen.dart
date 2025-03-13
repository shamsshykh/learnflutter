import 'package:flutter/material.dart';

class StatefulWidgetState extends State<StatefulWidgetScreen> {
  var message = 'Hello World';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(message),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  if(message == 'Hello World'){
                    message = 'text updated';
                  }else {
                    message = 'Hello World';
                  }
                }); 
              },
              child: Text('Update Text'),
            ),
          ],
        ),
      ),
    );
  }
}

class StatefulWidgetScreen extends StatefulWidget {
  const StatefulWidgetScreen({super.key});


  @override
  State<StatefulWidget> createState() => StatefulWidgetState();
}
