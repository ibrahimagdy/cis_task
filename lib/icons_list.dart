import 'package:flutter/material.dart';

class IconWidget extends StatelessWidget{
  final Icon icon;
  final String nameOfIcon;
  const IconWidget({super.key, required this.icon, required this.nameOfIcon});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          CircleAvatar(
            backgroundColor: const Color(0xffe0eef7),
            radius: 28,
            child: Icon(
              icon.icon,
              color: const Color(0xff6468da),
              size: 28,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            nameOfIcon,
            style: const TextStyle(
              color: Color(0xff6468da),
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }

}