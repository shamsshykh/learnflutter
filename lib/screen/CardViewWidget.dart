import 'package:flutter/material.dart';

class CardViewWidget extends StatelessWidget {
  const CardViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('List View')),
      body: DynamicListView(),
    );
  }
}

class DynamicListView extends StatelessWidget {
  const DynamicListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return ListItem();
      },
      itemCount: 50,
      scrollDirection: Axis.vertical,
    );
  }
}

class ListItem extends StatelessWidget {
  const ListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.lightBlueAccent,
      margin: EdgeInsets.all(5),
      elevation: 2,
      child: const Padding(padding: EdgeInsets.all(8.0), child: Text("data")),
    );
  }
}
