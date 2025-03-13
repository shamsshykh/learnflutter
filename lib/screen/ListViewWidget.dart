import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListViewWidget extends StatelessWidget {
  const ListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('List View')),
      body: DynamicListViewWithDivider(),
    );
  }
}

class StaticListView extends StatelessWidget {
  const StaticListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        Padding(padding: const EdgeInsets.all(10.0), child: Text("D")),
        Padding(padding: const EdgeInsets.all(10.0), child: Text("D")),
        Padding(padding: const EdgeInsets.all(10.0), child: Text("D")),
        Padding(padding: const EdgeInsets.all(10.0), child: Text("D")),
        Padding(padding: const EdgeInsets.all(10.0), child: Text("D")),
        Padding(padding: const EdgeInsets.all(10.0), child: Text("D")),
        Padding(padding: const EdgeInsets.all(10.0), child: Text("D")),
        Padding(padding: const EdgeInsets.all(10.0), child: Text("D")),
        Padding(padding: const EdgeInsets.all(10.0), child: Text("D")),
        Padding(padding: const EdgeInsets.all(10.0), child: Text("D")),
        Padding(padding: const EdgeInsets.all(10.0), child: Text("D")),
        Padding(padding: const EdgeInsets.all(10.0), child: Text("D")),
        Padding(padding: const EdgeInsets.all(10.0), child: Text("D")),
        Padding(padding: const EdgeInsets.all(10.0), child: Text("D")),
        Padding(padding: const EdgeInsets.all(10.0), child: Text("D")),
        Padding(padding: const EdgeInsets.all(10.0), child: Text("D")),
      ],
    );
  }
}

class DynamicListView extends StatelessWidget {
  const DynamicListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Padding(padding: const EdgeInsets.all(8.0), child: Text("data"));
      },
      itemCount: 100,
      scrollDirection: Axis.horizontal,
    );
  }
}

class DynamicListViewWithDivider extends StatelessWidget {
  const DynamicListViewWithDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        return Padding(padding: const EdgeInsets.all(8.0), child: Text("data"));
      },
      itemCount: 30,
      scrollDirection: Axis.vertical,
      separatorBuilder: (context, index) {
        return Divider(thickness: 2);
      },
    );
  }
}
