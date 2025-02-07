import 'package:flutter/material.dart';
import 'package:nrittam/constants.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Padding(padding: const EdgeInsets.only(bottom: 10), child: Column(
            children: [
              Stack(
                alignment: Alignment.centerLeft,
                children: [
                  Image.asset(
                    "assets/images/role.png",
                    fit: BoxFit.cover,
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.25,
                  ),
                  Opacity(
                    opacity: 0.6,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.25,
                      decoration: BoxDecoration(
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Individual Learner",
                          style: TextStyle(
                            color: ColorConstants.mYellow,
                            fontSize: 36,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Welcome to Nrittam  – Let’s transform your practice journey!",
                        )
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: ColorConstants.mYellow, width: 2,),
                          borderRadius: BorderRadius.circular(14),
                          color: Colors.white10
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 4),
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Name",
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 5,),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: ColorConstants.mYellow, width: 2,),
                          borderRadius: BorderRadius.circular(14),
                          color: Colors.white10
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 4),
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Email",
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 5,),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: ColorConstants.mYellow, width: 2,),
                          borderRadius: BorderRadius.circular(14),
                          color: Colors.white10
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 4),
                        child: TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Password",
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 5,),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: ColorConstants.mYellow, width: 2,),
                          borderRadius: BorderRadius.circular(14),
                          color: Colors.white10
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 4),
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Date of Birth",
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 5,),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: ColorConstants.mYellow, width: 2,),
                          borderRadius: BorderRadius.circular(14),
                          color: Colors.white10
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 4),
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Dance Style",
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 5,),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: ColorConstants.mYellow, width: 2,),
                          borderRadius: BorderRadius.circular(14),
                          color: Colors.white10
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 4),
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Previously Taken Exam (if any)",
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 5,),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: ColorConstants.mYellow, width: 2,),
                          borderRadius: BorderRadius.circular(14),
                          color: Colors.white10
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 4),
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Class Enrolled (if any)",
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 40,),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed("/home");
                      },
                      child: IntrinsicWidth(
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 2),
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 22.0, vertical: 11),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "Get Started",
                                  style: TextStyle(fontSize: 16),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(Icons.arrow_forward_outlined)
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
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
                            "Login",
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
              )
            ],
          )),
        )
    );
  }
}
