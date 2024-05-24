import 'package:flutter/material.dart';
import 'package:xpensefox/Screens/cardname/cardname.dart';
import 'package:xpensefox/app/sizeutils.dart';

class Firstcardpg extends StatefulWidget {
  const Firstcardpg({super.key});

  @override
  State<Firstcardpg> createState() => _FirstcardpgState();
}

class _FirstcardpgState extends State<Firstcardpg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              'Create your first card!',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50),
            child: Container(
              height: 300.v,
              width: 300.h,
              child: Stack(
                children: [
                  Image.asset(
                    'assets/images/card.png',
                    height: 300.v,
                    width: 300.h,
                    fit: BoxFit.fill,
                  ),
                  Positioned(
                      top: 100.v,
                      left: 100.h,
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Cardnamepg()));
                        },
                        child: Text(
                          'Tap here',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                      ))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
