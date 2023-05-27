import 'package:flutter/material.dart';
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
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 45),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'Я тебя слышу\nтвой друг психолог',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.w700,
                          color: greyb),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, bottom: 50),
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: darkpink,
                      borderRadius: BorderRadius.circular(13),
                      boxShadow: [
                        BoxShadow(
                            color: black.withOpacity(.25),
                            offset: const Offset(0, 4),
                            blurRadius: 4)
                      ]),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 15, right: 15),
                        child: Text(
                          'Я Психолог',
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                              color: white),
                        ),
                      ),
                      Padding(
                          padding:
                              EdgeInsets.only(top: 15, right: 15, left: 15),
                          child: Text(
                            'Я здесь чтобы выслушать все ваши потребности и готовы помочь вам. Расскажите мне свою каждую проблему, и я посмотрю чем смогу вам помочь./nНе попадайтесь в ловушку, думая, что психологи нужны только для психов. Нет, психологи, как и я, здесь чтобы слушать/n ТОЛЬКО ВАС',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: white),
                          )),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
