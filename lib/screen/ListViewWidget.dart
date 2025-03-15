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
        return Padding(padding: const EdgeInsets.all(5.0), child: Text("data"));
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
      itemBuilder: (context, currentIndex) {
       // return ListItem();
        return ListItemWithListTile(currentIndex);
      },
      itemCount: 10,
      scrollDirection: Axis.vertical,
      separatorBuilder: (context, index) {
        return Divider(thickness: 2);
      },
    );
  }
}

class ListItem extends StatelessWidget {
  const ListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(padding: EdgeInsets.all(8.0), child: Text("data"));
  }
}

class ListItemWithListTile extends StatelessWidget {
  const ListItemWithListTile(this.index, {super.key});

  final int index;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.ac_unit),
      title: Text("Data $index"),
      subtitle: Text("Subtitle"),
      trailing: Icon(Icons.add),
    );
  }
}

