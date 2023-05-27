import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:woman/colors.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: babypink,
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 32),
            child: Text(
              'What is PMS?',
              style: TextStyle(fontSize: 23, fontWeight: FontWeight.w700),
            ),
          ),
          Conty(),
          Conty(),
          Conty(),
        ],
      ),
    );
  }
}

class Conty extends StatelessWidget {
  const Conty({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      decoration: BoxDecoration(
          color: darkpink, borderRadius: BorderRadius.circular(13)),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 3),
            child: Text(
              'Lorem ipsum',
              style: TextStyle(
                  fontSize: 20, fontWeight: FontWeight.w700, color: white),
            ),
          ),
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce pellentesque ultricies magna, a rhoncus leo. ',
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.w500, color: white),
          )
        ],
      ),
    );
  }
}
