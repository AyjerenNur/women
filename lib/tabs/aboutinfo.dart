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
            child: const Icon(
              Icons.arrow_back_ios,
              color: black,
            )),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        children: [
          const Text(
            'Что такое ПМС?',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 23, fontWeight: FontWeight.w700),
          ),
          const Conty(
            title: 'ПМС',
            subtext:
                "Это предменструальный синдром, который возникает у женщин перед менструацией./nМенструация – это период, когда женщина вытекает кровь из матки.",
          ),
          const Conty(
            title: 'Симптомы',
            subtext:
                'У него есть несколько симптомов, таких как:/nтревожность/nплачи/nперепады настроения/nпристрастие к еде/nплохая концентрация',
          ),
          const Conty(
            title: 'Это все нормально?',
            subtext:
                'ДА. Это случается с большинством женщин! Менструация – это всего лишь признак полового созревания у девочек.',
          ),
          const Conty(
            title: 'Смотрите также Половое созревание',
            subtext:
                'Это время, когда вы достигаете зрелости и становитесь способным к размножению.',
          )
        ],
      ),
    );
  }
}

class Conty extends StatelessWidget {
  const Conty({Key? key, required this.subtext, required this.title})
      : super(key: key);
  final String subtext;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      decoration: BoxDecoration(
          color: darkpink,
          borderRadius: BorderRadius.circular(13),
          boxShadow: [
            BoxShadow(
                color: black.withOpacity(0.25),
                offset: const Offset(0, 4),
                blurRadius: 4)
          ]),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 3),
            child: Text(
              title,
              style: const TextStyle(
                  fontSize: 20, fontWeight: FontWeight.w700, color: white),
            ),
          ),
          Text(
            subtext,
            style: const TextStyle(
                fontSize: 16, fontWeight: FontWeight.w500, color: white),
          )
        ],
      ),
    );
  }
}
