

import 'package:flutter/material.dart';
import 'package:woman/colors.dart';
import 'package:woman/tabs/aboutinfo.dart';

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
                children:const [
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
                    .push(MaterialPageRoute(builder: ((context) =>const AboutInfo())));
              },
              child: const Imagery(
                image: 'girlyoga.png',
                text: 'What is PMS?',
              ),
            ),
            const Imagery(
              image: 'fam.png',
              text: 'What is happening with my body and face?',
            ),
            const Imagery(
              image: 'elec.png',
              text: 'Intim care',
            ),
          ],
        ));
  }
}

class Imagery extends StatelessWidget {
  const Imagery({Key? key, required this.image, required this.text})
      : super(key: key);
  final String image;
  final String text; 
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
                margin: const EdgeInsets.only(left: 16, right: 20),
                padding:const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(200),
                  color: darkpink,
                ),
                child: Center(
                  child: Text(
                    text,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
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
