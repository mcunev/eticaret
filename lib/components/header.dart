import 'package:flutter/material.dart';

Widget header({required String title, required context}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const SizedBox(
        height: 29,
      ),
      // geri dön ikonu
      GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: const Icon(
          Icons.arrow_back,
          size: 27,
          color: Color(0XFF0A1034),
        ),
      ),

      const SizedBox(
        height: 24,
      ),
      Text(
        title,
        style: const TextStyle(
            fontWeight: FontWeight.bold, color: Color(0XFF0A1034)),
      ),
    ],
  );
}
