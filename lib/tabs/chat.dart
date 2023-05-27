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
    return Scaffold(
      backgroundColor: babypink,
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
      ),
      body: Column(
        children: const [
          Padding(
            padding: EdgeInsets.only(top: 32),
            child: Text(
              'What is PMS?',
              style: TextStyle(fontSize: 23, fontWeight: FontWeight.w700),
            ),
          ),
          const Conty(
            title: 'PMS',
            subtext:
                "It is a premenstrual syndrome that happens to women before menstruation./nMenstruation is a period when a woman discharges blood from the uterus",
          ),
          const Conty(
            title: 'Symptoms',
            subtext:
                'It has a few symptoms like:/nAnxiety/nCrying spells/nMood swings/nFood cravings/nPoor concentration/nFood cravings',
          ),
          const Conty(
            title: 'Is it all normal?',
            subtext:
                'YES. It happens to most women! Menstruation is just a sign of puberty for girls',
          ),
          const Conty(
            title: 'See also Puberty',
            subtext:
                'It is the time when you reach maturity and become capable of reproduction',
          ),
        ],
      ),
    );
  }
}

class Conty extends StatelessWidget {
  const Conty({Key? key, required this.subtext, required this.title})
      : super(
          key: key,
        );
  final String subtext;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      decoration: BoxDecoration(
          color: darkpink, borderRadius: BorderRadius.circular(13)),
      child: Column(
        children: const [
          Padding(
            padding: EdgeInsets.only(bottom: 3),
            child: Text(
              '',
              style: TextStyle(
                  fontSize: 20, fontWeight: FontWeight.w700, color: white),
            ),
          ),
          Text(
            '',
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.w500, color: white),
          )
        ],
      ),
    );
  }
}
