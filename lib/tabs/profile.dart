import 'package:badges/badges.dart'as b;
import 'package:flutter/material.dart';
import 'package:woman/colors.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    // double w = MediaQuery.of(context).size.width;
    //
    return Scaffold(
        body: Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 60),
          child: b.Badge(
            position: b.BadgePosition.bottomEnd(bottom: 4, end: 4),
            badgeStyle: b.BadgeStyle(badgeColor: black),
            badgeContent: Icon(Icons.camera_alt_rounded, color: white, size: 15,),
            child: ClipOval(
              child: Image.asset(
                'women1.png',
                width: 118,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text('User13',
              style: TextStyle(color: black, fontWeight: FontWeight.bold)),
        ),
        const Padding(
          padding: EdgeInsets.only(bottom: 19),
          child: Text('User13@gmail.com', style: TextStyle(color: lightgray)),
        ),
        Expanded(
            child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 41),
          shrinkWrap: true,
          children: [
            const MyPinkButton(
              text: 'Мои достижения',
            ),
            const MyPinkButton(text: 'Мои психологи'),
            const Padding(
                padding: EdgeInsets.only(top: 45, bottom: 14),
                child: Text(
                  'Записи',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                    color: greyb,
                  ),
                )),
            Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.circular(9),
                    boxShadow: [
                      BoxShadow(
                        color: black.withOpacity(0.05),
                        offset: const Offset(0, 0),
                        blurRadius: 5,
                      )
                    ]),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: ClipOval(
                        child: Image.asset(
                          'women1.png',
                          width: 62,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Инна Никбахшоева',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                            color: greyb,
                          ),
                        ),
                        Text(
                          'дата',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 12,
                            color: greyb.withOpacity(0.7),
                          ),
                        ),
                        const Text(
                          '15.05.2023  18:00',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: greyb,
                          ),
                        )
                      ],
                    )
                  ],
                ))
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
      margin: const EdgeInsets.symmetric(vertical: 21),
      padding: const EdgeInsets.symmetric(vertical: 7),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(9), color: darkpink),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Spacer(),
          Expanded(
            flex: 3,
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                  color: Colors.white),
            ),
          ),
          const Expanded(
              child: Icon(
            Icons.arrow_forward_ios,
            color: Colors.white,
          )),
        ],
      ),
    );
  }
}
