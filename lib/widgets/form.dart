import 'package:flutter/material.dart';

class DanceForm extends StatelessWidget {
  final String imagePath;
  final String formName;
  const DanceForm({super.key, required this.imagePath, required this.formName});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed("/form");
      },
      child: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            imagePath,
            width: 200,
            height: 200,
          ),
          Text(
            formName,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
