import 'package:flutter/material.dart';
import 'package:nrittam/constants.dart';
import 'package:nrittam/widgets/socialbtn.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                  "Welcome Back",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                  ),
                ),
                Text(
                  "Welcome back to Nrittam. Sign In to resume",
                  style: TextStyle(fontSize: 16, color: Colors.white54),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SocialButton(
                  text: "Login with Google",
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
                  text: "Login with Facebook",
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
                  "Don't have an account?",
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                  width: 5,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed("/register");
                  },
                  child: Text(
                    "Sign Up",
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
