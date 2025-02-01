import 'package:flutter/material.dart';
import 'package:nrittam/constants.dart';
import 'package:nrittam/widgets/socialbtn.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Icon(
          Icons.arrow_back_outlined,
          color: ColorConstants.mYellow,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Text(
                  "Create an account",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                  ),
                ),
                Text(
                  "Create an account. It takes less than a minute.",
                  style: TextStyle(fontSize: 16, color: Colors.white54),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SocialButton(
                  text: "Continue with Google",
                  imagePath: "assets/images/google.png",
                  function: () {
                    Navigator.of(context).pushReplacementNamed("/home");
                  },
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Text(
                    "or",
                    style: TextStyle(color: Colors.white54, fontSize: 16),
                  ),
                ),
                SocialButton(
                  text: "Continue with Facebook",
                  imagePath: "assets/images/facebook.png",
                  function: () {
                    Navigator.of(context).pushReplacementNamed("/home");
                  },
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account?",
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                  width: 5,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed("/login");
                  },
                  child: Text(
                    "Log In",
                    style: TextStyle(
                      color: ColorConstants.mYellow,
                      fontSize: 18,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
