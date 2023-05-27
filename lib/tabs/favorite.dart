import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:woman/colors.dart';
import 'package:woman/tabs/chat.dart';

class Favorite extends StatefulWidget {
  const Favorite({super.key});

  @override
  State<Favorite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: babypink,
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 88),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'What are you  struggling with?',
                    style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w700,
                        color: greyb),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: ((context) => Chat())));
              },
              child: Imagery(
                image: 'girlyoga.png',
                text: 'What is PMS?',
              ),
            ),
            Imagery(
              image: 'fam.png',
              text: 'What is happening with my body and face?',
            ),
            Imagery(
              image: 'elec.png',
              text: 'Intim care',
            ),
          ],
        ));
  }
}

class Imagery extends StatelessWidget {
  Imagery({Key? key, required this.image, required this.text})
      : super(key: key);
  String image;
  String text; 
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 77),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(image),
          Expanded(
            child: Center(
              child: Container(
                margin: EdgeInsets.only(left: 16, right: 20),
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 14),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(200),
                  color: darkpink,
                ),
                child: Center(
                  child: Text(
                    text,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: white),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
