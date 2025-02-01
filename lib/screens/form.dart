import 'package:flutter/material.dart';
import 'package:nrittam/constants.dart';

class FormSpecificScreen extends StatefulWidget {
  const FormSpecificScreen({super.key});

  @override
  State<FormSpecificScreen> createState() => _FormSpecificScreenState();
}

class _FormSpecificScreenState extends State<FormSpecificScreen> {
  int _mode = 0;
  bool _postureSwitch = false;
  bool _timingSwitch = false;
  int _speedPick = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    Image.asset(
                      "assets/images/forms/adavu2.png",
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
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).pop();
                            },
                            child: Icon(
                              Icons.arrow_back,
                              color: ColorConstants.mYellow,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Tatta Adavu",
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
                            "Tatta Adavu in Bharatanatyam involves rhythmic foot stamps in the aramandi posture, building balance and coordination.",
                          )
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Modes",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white30,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    if (_mode == 1) {
                                      _mode = 0;
                                    } else {
                                      _mode = 1;
                                    }
                                  });
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: _mode == 1
                                        ? ColorConstants.mYellow
                                        : Colors.transparent,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Focus Mode",
                                          style: TextStyle(
                                            fontSize: 24,
                                            fontWeight: FontWeight.bold,
                                            color: _mode == 1
                                                ? Colors.black
                                                : Colors.white,
                                          ),
                                        ),
                                        Text(
                                          "Nrittam will monitor the dance without any interruption but will warn if its dangerous",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            color: _mode == 1
                                                ? Colors.black
                                                : Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                color: ColorConstants.mGrey,
                                height: 2,
                                margin: EdgeInsets.symmetric(vertical: 10),
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    if (_mode == 2) {
                                      _mode = 0;
                                    } else {
                                      _mode = 2;
                                    }
                                  });
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: _mode == 2
                                        ? ColorConstants.mYellow
                                        : Colors.transparent,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Interactive Mode",
                                          style: TextStyle(
                                            fontSize: 24,
                                            fontWeight: FontWeight.bold,
                                            color: _mode == 2
                                                ? Colors.black
                                                : Colors.white,
                                          ),
                                        ),
                                        Text(
                                          "Nrittam will improvise real time and encourage betterment on spot",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            color: _mode == 2
                                                ? Colors.black
                                                : Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Text(
                        "Get Feedback on",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white30,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Posture",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Switch(
                                    value: _postureSwitch,
                                    onChanged: (value) {
                                      setState(() {
                                        _postureSwitch = value;
                                      });
                                    },
                                    activeColor: ColorConstants.mYellow,
                                    inactiveThumbColor: Colors.white,
                                    inactiveTrackColor: Colors.transparent,
                                  )
                                ],
                              ),
                            ),
                            Container(
                              color: ColorConstants.mGrey,
                              height: 2,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Timing",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Switch(
                                    value: _timingSwitch,
                                    onChanged: (value) {
                                      setState(() {
                                        _timingSwitch = value;
                                      });
                                    },
                                    activeColor: ColorConstants.mYellow,
                                    inactiveThumbColor: Colors.white,
                                    inactiveTrackColor: Colors.transparent,
                                  )
                                ],
                              ),
                            ),
                            durationOrSpeed(_timingSwitch),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: IntrinsicWidth(
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white30, width: 2),
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
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget durationOrSpeed(bool check) {
    if (!check) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: ColorConstants.mGrey,
            height: 2,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Duration",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: ColorConstants.mGrey,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 8),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        _buildTimeUnit('00', 'hrs'),
                        _buildSeparator(),
                        _buildTimeUnit('00', 'min'),
                        _buildSeparator(),
                        _buildTimeUnit('01', 'sec'),
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      );
    } else {
      return Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  if (_speedPick == 1) {
                    _speedPick = 0;
                  } else {
                    _speedPick = 1;
                  }
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: _speedPick == 1
                      ? ColorConstants.mYellow
                      : ColorConstants.mGrey,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "1X",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: _speedPick == 1 ? Colors.black : Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  if (_speedPick == 2) {
                    _speedPick = 0;
                  } else {
                    _speedPick = 2;
                  }
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: _speedPick == 2
                      ? ColorConstants.mYellow
                      : ColorConstants.mGrey,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "2X",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: _speedPick == 2 ? Colors.black : Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  if (_speedPick == 3) {
                    _speedPick = 0;
                  } else {
                    _speedPick = 3;
                  }
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: _speedPick == 3
                      ? ColorConstants.mYellow
                      : ColorConstants.mGrey,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "3X",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: _speedPick == 3 ? Colors.black : Colors.white,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      );
    }
  }

  Widget _buildTimeUnit(String value, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          value,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: const TextStyle(
            color: Colors.white70,
            fontSize: 12,
          ),
        ),
      ],
    );
  }

  Widget _buildSeparator() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Text(
        ':',
        style: TextStyle(
          color: Colors.white,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
