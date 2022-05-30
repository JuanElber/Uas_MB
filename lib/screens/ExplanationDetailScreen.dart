import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExplanationDetailScreen extends StatelessWidget {
  final String img, desc;

  const ExplanationDetailScreen(
      {Key? key, required this.img, required this.desc})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(img),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(desc),
            ),
          ],
        ),
      ),
    );
  }
}
