import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:woman/colors.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 60),
          child: CircleAvatar(
            minRadius: 58,
            backgroundColor: Colors.pink,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('User13',
              style: TextStyle(color: black, fontWeight: FontWeight.bold)),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 19),
          child: Text('User13@gmail.com', style: TextStyle(color: lightgray)),
        ),
        Expanded(
            child: ListView(
          shrinkWrap: true,
          children: [
            MyPinkButton(
              text: 'Мои достижения',
            ),
            MyPinkButton(text: 'Мои психологи'),
            MyPinkButton(
              text: 'Написать психологу',
            )
          ],
        ))
      ],
    ));
  }
}

class MyPinkButton extends StatelessWidget {
  const MyPinkButton({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 21, horizontal: 41),
      padding: EdgeInsets.symmetric(vertical: 7),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(9), color: darkpink),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Spacer(),
          Expanded(
            flex: 3,
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                  color: Colors.white),
            ),
          ),
          Expanded(
              child: Icon(
            Icons.arrow_forward_ios,
            color: Colors.white,
          )),
        ],
      ),
    );
  }
}
