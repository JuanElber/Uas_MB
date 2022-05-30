import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uas/screens/ExplanationDetailScreen.dart';

class ExplanationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: 30,
          ),
          explanationWidget(
              context,
              'assets/calories-luar.jpg',
              'CALORIES',
              'Definisi kalori /n Kalori adalah satuan unit kandungan panas atau energi, atau jumlah energi yang didapatkan dari makanan dan minuman. Satuan ini juga merupakan jumlah energi yang dibakar tubuh melalui aktivitas sehari-hari. Artinya, bagian dari zat gizi karbohidrat ini yaitu energi yang dibutuhkan tubuh agar bisa beraktivitas dan menjalankan fungsinya dengan baik. Uniknya, banyak orang menganggap satuan ini hanya ada pada makanan dan minuman. Nyatanya, apa pun yang mengandung energi memilikinya. Hanya saja, manusia hanya bisa mendapatkan nutrisi dari sumber energi ini melalui makanan dan minuman tertentu.',
              'assets/kalori-dalam.jpg'),
          SizedBox(
            height: 20,
          ),
          explanationWidget(
              context,
              'assets/bulking-luar.jpg',
              'BULKING',
              'Apa itu Bulking \n Bulking adalah memperbanyak asupan kalori dibanding membakarnya, dengan tujuan meningkatkan massa otot. Saat melakukan bulking, seseorang harus mengonsumsi makanan dengan jumlah kalori harian melebihi kebutuhan tubuh seharihari. Dengan begitu, massa otot akan bertambah dan berat badan pun ikut naik. Namun, hal ini sering disalahpahami bahwa melakukan bulking berarti makan sebanyak-banyaknya sesuai dengan keinginan. Padahal, mengonsumsi makanan sembarangan akan menimbulkan tumpukan lemak dan berakhir membentuk tubuh tidak ideal. Perlu diingat, bahwa bulking bertujuan menaikkan berat badan dengan cara meningkatkan massa otot dan bukan menambah lemak tubuh',
              'assets/dalam-bulking.jpg'),
          SizedBox(
            height: 20,
          ),
          explanationWidget(
              context,
              'assets/cutting-luar.jpg',
              'CUTTING',
              'Apa itu Bulking \n Bulking adalah memperbanyak asupan kalori dibanding membakarnya, dengan tujuan meningkatkan massa otot. Saat melakukan bulking, seseorang harus mengonsumsi makanan dengan jumlah kalori harian melebihi kebutuhan tubuh seharihari. Dengan begitu, massa otot akan bertambah dan berat badan pun ikut naik. Namun, hal ini sering disalahpahami bahwa melakukan bulking berarti makan sebanyak-banyaknya sesuai dengan keinginan. Padahal, mengonsumsi makanan sembarangan akan menimbulkan tumpukan lemak dan berakhir membentuk tubuh tidak ideal. Perlu diingat, bahwa bulking bertujuan menaikkan berat badan dengan cara meningkatkan massa otot dan bukan menambah lemak tubuh',
              'assets/dalam-cutting.png'),
        ],
      ),
    );
  }
}

Widget explanationWidget(BuildContext context, String img, String text,
    String Explanation, String imgInside) {
  return InkWell(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ExplanationDetailScreen(
            img: imgInside,
            desc: Explanation,
          ),
        ),
      );
    },
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Align(
          alignment: Alignment.center,
          child: Text(
            text,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 150,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                img,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
