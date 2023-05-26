import 'package:flutter/material.dart';

import 'colors.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  TextEditingController loginctrl = TextEditingController();
  TextEditingController passctrl = TextEditingController();
  TextEditingController phonectrl = TextEditingController();
  InputDecoration fieldecor = InputDecoration(
    contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
    filled: true,
    fillColor: textfieldcolor,
    enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(9),
        borderSide: BorderSide(color: Colors.transparent)),
    focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(9),
        borderSide: BorderSide(color: Colors.transparent)),
  );
  bool obscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: pink,
      body: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.only(top: 40, left: 20, right: 20, bottom: 10),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(40))),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Регистрация!',
                      style: TextStyle(
                          fontSize: 39,
                          fontWeight: FontWeight.w700,
                          color: textcolor),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 12),
                child: Text('Имя пользователя',
                    style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.w500,
                        color: textcolor2)),
              ),
              TextField(
                controller: loginctrl,
                cursorColor: textfieldcolor2,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: textfieldcolor2),
                decoration: fieldecor,
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 12),
                child: Text('Номер телефона',
                    style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.w500,
                        color: textcolor2)),
              ),
              TextField(
                controller: phonectrl,
                cursorColor: textfieldcolor2,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: textfieldcolor2),
                decoration: fieldecor,
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 12),
                child: Text('Пароль',
                    style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.w500,
                        color: textcolor2)),
              ),
              TextField(
                  obscureText: obscure,
                  controller: passctrl,
                  cursorColor: textfieldcolor2,
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: textfieldcolor2),
                  decoration: fieldecor.copyWith(
                      suffixIcon: GestureDetector(
                    onTap: () {
                      setState(() {
                        obscure = !obscure;
                      });
                    },
                    child: Icon(
                      obscure ? Icons.visibility_off : Icons.visibility,
                      color: textcolor,
                    ),
                  ))),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).size.height * 0.13),
                    child: Text(
                      'Забыли пароль?',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: textcolor4),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Уже есть аккаунт?',
                      style: TextStyle(
                          fontSize: 20,
                          decoration: TextDecoration.underline,
                          fontWeight: FontWeight.w500,
                          color: textcolor),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Войти',
                    style: TextStyle(
                        fontSize: 20,
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.w500,
                        color: textcolor),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
