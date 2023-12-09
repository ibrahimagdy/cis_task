import 'package:flutter/material.dart';

class SalesWidget extends StatelessWidget{
  final String imagePath;
  final String nameOfImage;
  const SalesWidget({super.key, required this.imagePath, required this.nameOfImage});

  @override
  Widget build(BuildContext context) {
    return  Expanded(
      child: Container(
        height: 300,
        color: Colors.white60,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              color: const Color(0xffe0eef7),
              child: const Text(
                "-50%",
                style: TextStyle(
                  color: Color(0xff6468da),
                ),
              ),
            ),
            Image.asset(
              imagePath,
            ),
             Align(
              alignment: Alignment.center,
              child: Text(
                nameOfImage,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18
                ),

              ),
            ),
          ],
        ),
      ),
    );
  }

}