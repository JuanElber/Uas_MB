import 'package:flutter/material.dart';
import 'package:uas/screens/AccountScreen.dart';
import 'package:uas/screens/ExerciseScreen.dart';
import 'package:uas/screens/ExplanationScreen.dart';
import 'package:uas/screens/LoginScreen.dart';
import 'package:uas/screens/RegisterScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomeScreen> {
  int current = 0;


  void setNavIndex(int index) {
    setState(() {
      current = index;
    });
  }

  final List<Widget> _listWidget = [
    const ExerciseScreen(),
    ExplanationScreen(),
    const AccountScreen(),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _listWidget[current],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 30,
        type: BottomNavigationBarType.fixed,
        currentIndex: current,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.sports_basketball,
              color: Colors.black54,
            ),
            label: 'exercise',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.list_alt,
              color: Colors.black54,
            ),
            label: 'explanation',
          ),
          BottomNavigationBarItem(
            icon:  Icon(
              Icons.account_circle_rounded,
              color: Colors.black54,
            ),
            label: 'account',
          ),
        ],
        onTap: (int index) {
          setNavIndex(index);
        },
      ),
    );
  }
}