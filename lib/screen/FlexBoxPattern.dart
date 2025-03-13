import 'package:flutter/material.dart';

class FlexBoxPattern extends StatelessWidget {
  const FlexBoxPattern({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        title: Text("Flex Box Pattern"),
        actions: [Icon(Icons.logout)],
      ),
      body: Column(
        children: [
          Expanded(
            child: ScrollView()
          ),
          MessageTypingView()
        ],
      ),
    );
  }
}

class ScrollView extends StatelessWidget {
  const ScrollView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            MessageItem(),
            MessageItem(),
            MessageItem(),
            MessageItem(),
            MessageItem(),
            MessageItem(),
            MessageItem(),
            MessageItem(),
            MessageItem(),
            MessageItem(),
            MessageItem(),
            MessageItem(),
            MessageItem(),
            MessageItem(),
            MessageItem(),
            MessageItem(),
            MessageItem(),
            MessageItem(),
          ],
        ),
      ),
    );
  }
}

class MessageItem extends StatelessWidget {
  const MessageItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Friday 8 Jan 2025", textAlign: TextAlign.center),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(width: 1, color: Colors.grey),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Hello this is the message Hello this is the message Hello this is the message",
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MessageTypingView extends StatelessWidget {
  const MessageTypingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Icon(Icons.add),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: "Type your message",
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
              ),
            ),
          ),
          Icon(Icons.send),
        ],
      ),
    );
  }
}
