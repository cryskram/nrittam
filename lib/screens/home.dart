import 'package:flutter/material.dart';
import 'package:nrittam/constants.dart';
import 'package:nrittam/widgets/form.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("Dashboard"),
          centerTitle: true,
        ),
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                "Adavu",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    DanceForm(
                      imagePath: "assets/images/forms/adavu2.png",
                      formName: "Tatta Adavu",
                    ),
                    DanceForm(
                      imagePath: "assets/images/forms/adavu1.png",
                      formName: "Nata Adavu",
                    ),
                    DanceForm(
                      imagePath: "assets/images/forms/adavu3.png",
                      formName: "Metta Adavu",
                    ),
                    DanceForm(
                      imagePath: "assets/images/forms/adavu4.png",
                      formName: "Visharu Adavu",
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Bheda",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    DanceForm(
                      imagePath: "assets/images/forms/bheda1.png",
                      formName: "Shiro Bheda",
                    ),
                    DanceForm(
                      imagePath: "assets/images/forms/bheda2.png",
                      formName: "Drishti Bheda",
                    ),
                    DanceForm(
                      imagePath: "assets/images/forms/bheda3.png",
                      formName: "Greeva Bheda",
                    ),
                    DanceForm(
                      imagePath: "assets/images/forms/bheda4.png",
                      formName: "Brukuti Bheda",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: ColorConstants.mGrey,
          selectedItemColor: ColorConstants.mYellow,
          unselectedItemColor: Colors.white38,
          currentIndex: _index,
          onTap: (value) {
            setState(() {
              _index = value;
            });
          },
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              label: "Home",
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: "Activity",
              icon: Icon(Icons.monitor_heart_outlined),
            ),
            BottomNavigationBarItem(
              label: "Results",
              icon: Icon(Icons.newspaper),
            ),
            BottomNavigationBarItem(
              label: "Profile",
              icon: Icon(Icons.person),
            )
          ],
        ),
      ),
    );
  }
}
