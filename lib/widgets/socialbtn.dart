import 'package:flutter/material.dart';
import 'package:nrittam/constants.dart';

class SocialButton extends StatelessWidget {
  final String text;
  final String imagePath;
  final VoidCallback function;
  const SocialButton(
      {super.key,
      required this.text,
      required this.imagePath,
      required this.function});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.75,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: ColorConstants.mGrey,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                imagePath,
                width: 40,
                height: 40,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                text,
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
