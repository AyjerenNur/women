import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
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
            Text('What are you  struggling with?'),
            Row(
              children: [Image.asset('')],
            )
          ],
        ));
  }
}
