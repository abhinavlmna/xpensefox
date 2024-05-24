import 'package:flutter/material.dart';
import 'package:xpensefox/Screens/dashboard/dashboard.dart';
import 'package:xpensefox/Screens/registration/registration.dart';
import 'package:xpensefox/app/sizeutils.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              height: 50.v,
              // width: 300,
              child: Stack(
                children: [
                  Image.asset(
                    'assets/images/button.png',
                    height: 50.v,
                    width: 300.h,
                    fit: BoxFit.fill,
                  ),
                  Positioned(
                      left: 120.h,
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Dashboardpg()));
                        },
                        child: Text('sign up ',
                            style:
                                TextStyle(color: Colors.white, fontSize: 20)),
                      )),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 60.v,
          ),
          Container(
            height: 50.v,
            // width: 300,
            child: Stack(
              children: [
                Image.asset(
                  'assets/images/button.png',
                  height: 50.v,
                  width: 300.h,
                  fit: BoxFit.fill,
                ),
                Positioned(
                    left: 120.h,
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Registrationpg()));
                      },
                      child: Text('sign in ',
                          style: TextStyle(color: Colors.white, fontSize: 20)),
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
