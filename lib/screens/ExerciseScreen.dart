import 'package:flutter/material.dart';
import 'package:uas/screens/ExerciseDetailScreen.dart';

class ExerciseScreen extends StatelessWidget {
  const ExerciseScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: GridView.count(
          physics: NeverScrollableScrollPhysics(),
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          crossAxisCount: 2,
          children: [
            _exerciseWidget(context, 'assets/Back-exercise.jpg', 'BACK', 1),
            _exerciseWidget(context, 'assets/chest-execise.jpg', 'CHEST', 2),
            _exerciseWidget(context, 'assets/leg-exercise.jpg', 'LEG', 3),
            _exerciseWidget(
                context, 'assets/Shoulder-exercise.jpg', 'SHOULDER', 4),
          ],
        ),
      ),
    );
  }
}

Widget _exerciseWidget(
    BuildContext context, String img, String text, int code) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ExerciseDetailScreen(
              code: code,
            ),
          ),
        );
      },
      child: Card(
        elevation: 5,
        child: Column(
          children: [
            Expanded(
              child: Image.asset(
                img,
                width: double.infinity,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              child: Text(
                text,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
