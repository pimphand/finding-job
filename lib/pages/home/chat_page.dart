import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F6F6),
      appBar: AppBar(
        title: Text('Chat'),
      ),
      body: Center(
        child: Text('Chat'),
      ),
    );
  }
}
