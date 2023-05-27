

import 'package:flutter/material.dart';
import 'package:woman/colors.dart';

class AboutInfo extends StatefulWidget {
  const AboutInfo({super.key});

  @override
  State<AboutInfo> createState() => _AboutInfoState();
}

class _AboutInfoState extends State<AboutInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: babypink,
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: const Icon(Icons.arrow_back_ios,color: black,)),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        children: const [
          Text(
            'What is PMS?',
            style: TextStyle(fontSize: 23, fontWeight: FontWeight.w700),
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
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      padding:const  EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      decoration: BoxDecoration(
          color: darkpink, 
          borderRadius: BorderRadius.circular(13),
          boxShadow: [
            BoxShadow(
              color: black.withOpacity(0.25),
              offset: Offset(0, 4),
              blurRadius: 4
            )
          ]
          ),
      child: Column(
        children: const [
          Padding(
            padding: EdgeInsets.only(bottom: 3),
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
