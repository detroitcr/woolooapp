import 'package:flutter/material.dart';

class OnboardModel {
  String img;
  String text;
  String desc;
  Color bg;
  Color button;

  OnboardModel({
    required this.img,
    required this.text,
    required this.desc,
    required this.bg,
    required this.button,
  });
}

List<OnboardModel> screens = <OnboardModel>[
  OnboardModel(
    img: 'assets/images/college.jpg',
    text: "Belajar Dengan Metode Learning by Doing",
    desc: "short introduction our app",
    bg: Colors.white,
    button: Color(0xFF4756DF),
  ),
  OnboardModel(
    img: 'assets/images/college.jpg',
    text: "Belajar Dengan Metode Learning by Doing",
    desc: "short introduction our app",
    bg: Colors.white,
    button: Color(0xFF4756DF),
  ),
  OnboardModel(
    img: 'assets/images/college.jpg',
    text: "Gunakan Fitur Kolaborasi Untuk Pengalaman Lebih",
    desc: "short introduction our app",
    bg: Colors.white,
    button: Color(0xFF4756DF),
  ),
];