import 'package:flutter/material.dart';
import 'package:woman/colors.dart';

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
            const Text('What are you  struggling with?'),
            Row(
              children: [Image.asset('')],
            )
          ],
        ));
  }
}
