import 'package:flutter/material.dart';
import 'package:woman/colors.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: babypink,
      body: Center(
        child: 
        Text("Здесь будет чат", style: TextStyle(
          color: greyb,
          fontSize: 20,
        ),),
      ),
    );
  }
}