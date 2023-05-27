import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:woman/colors.dart';

class HomeScreeen extends StatefulWidget {
  const HomeScreeen({super.key});

  @override
  State<HomeScreeen> createState() => _HomeScreeenState();
}

class _HomeScreeenState extends State<HomeScreeen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: babypink,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 80),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'I am listening to you,',
                    style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w700,
                        color: greyb),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'your friend psychologist',
                  style: TextStyle(
                      fontSize: 23, fontWeight: FontWeight.w700, color: greyb),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 30, bottom: 50),
              child: Container(
                width: MediaQuery.of(context).size.width * 89,
                height: 328,
                decoration: BoxDecoration(
                    color: darkpink, borderRadius: BorderRadius.circular(13)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: Text(
                        'I am',
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            color: white),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: Text(
                        'Psychologist',
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            color: white),
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.only(top: 15, right: 15, left: 15),
                        child: Text(
                          'С раннего возраста необходимо выполнять упражнения на развитие мелкой моторики, развитая моторика — залог ловкости рук при выполнении мелких движений, хорошего почерка и даже развитой речи. В головном мозге речевой и моторный центры находятся рядом друг с другом.',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: white),
                        )),
                  ],
                ),
              ),
            ),
            Container(
              width: 375,
              height: 100,
              decoration: BoxDecoration(
                  color: darkpink, borderRadius: BorderRadius.circular(13)),
            )
          ],
        ),
      ),
    );
  }
}
