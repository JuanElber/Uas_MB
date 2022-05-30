import 'package:flutter/material.dart';

class ExerciseDetailScreen extends StatelessWidget {
  final int code;

  ExerciseDetailScreen({Key? key, required this.code}) : super(key: key);

  // @override
  // void initState() {
  //   if (code == 1) {
  //     content = [
  //       _exerciseListTile('assets/back/deadlift.jpg','Barbel Deadlift', 'Reps 3x12'),
  //       _exerciseListTile('assets/back/Seated-Cable-Row.jpg','Seated Cable Row', 'Reps 3x12'),
  //       _exerciseListTile('assets/back/deadlift.jpg','Barbel Deadlift', 'Reps 3x12'),
  //       _exerciseListTile('assets/back/deadlift.jpg','Barbel Deadlift', 'Reps 3x12')
  //     ];
  //   } else {
  //     content = [
  //       _exerciseListTile('assets/back/deadlift.jpg','Barbel Deadlift', 'Reps 3x12'),
  //       _exerciseListTile('assets/back/Seated-Cable-Row.jpg','Seated Cable Row', 'Reps 3x12'),
  //       _exerciseListTile('assets/back/deadlift.jpg','Barbel Deadlift', 'Reps 3x12'),
  //       _exerciseListTile('assets/back/deadlift.jpg','Barbel Deadlift', 'Reps 3x12')
  //     ];
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    List<Widget> content = [];

    if (code == 1) {
      content = [
        _exerciseListTile(context, 'assets/back/deadlift.jpg',
            'Barbel Deadlift', 'Reps 3x12'),
        _exerciseListTile(context, 'assets/back/Seated-Cable-Row.jpg',
            'Seated Cable Row', 'Reps 3x12'),
        _exerciseListTile(
            context, 'assets/back/pull-up.jpg', 'Pull-Up', 'Reps 3x6'),
        _exerciseListTile(context, 'assets/back/Lat-PullDown.jpg',
            'Lat PullDown', 'Reps 3x12')
      ];
    } else if (code == 2) {
      content = [
        _exerciseListTile(
            context, 'assets/chest/chest1.jpg', 'Bench Press', 'Reps 4x12'),
        _exerciseListTile(
            context, 'assets/chest/chest2.jpg', 'Cable Crossover', 'Reps 4x12'),
        _exerciseListTile(context, 'assets/chest/chest3.jpg',
            'Incline Dumbell Press', 'Reps 4x12'),
        _exerciseListTile(
            context, 'assets/chest/chest4.jpg', 'Dumbell Fly', 'Reps 4x12')
      ];
    } else if (code == 3) {
      content = [
        _exerciseListTile(
            context, 'assets/leg/leg1.jpg', 'Barbel Squat', 'Reps 4x8'),
        _exerciseListTile(
            context, 'assets/leg/leg2.jpg', 'Seated Leg Curl', 'Reps 4x12'),
        _exerciseListTile(
            context, 'assets/leg/leg3.jpg', 'Hack Squats', 'Reps 4x12'),
        _exerciseListTile(
            context, 'assets/leg/leg4.jpg', 'Leg Extension', 'Reps 4x12')
      ];
    } else {
      content = [
        _exerciseListTile(context, 'assets/shoulder/shoulder1.jpg',
            'Shoulder Press', 'Reps 4x12'),
        _exerciseListTile(context, 'assets/shoulder/shoulder2.jpg',
            'Side Lateral Raises', 'Reps 4x12'),
        _exerciseListTile(context, 'assets/shoulder/shoulder3.jpg',
            'Dumbell Front Raise', 'Reps 4x12'),
        _exerciseListTile(context, 'assets/shoulder/shoulder4.jpg',
            'Dumbelll Rear Delt Fly', 'Reps 4x12')
      ];
    }
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: content,
        ),
      ),
    );
  }
}

Widget _exerciseListTile(
    BuildContext context, String img, String title, String subtitle) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 120,
          height: 100,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                img,
              ),
            ),
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              subtitle,
              style: TextStyle(
                fontSize: 14,
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
