import 'package:flutter/material.dart';
import 'package:xpensefox/Screens/foodpage/foodpage.dart';
import 'package:xpensefox/app/sizeutils.dart';

class Cardnamepg extends StatefulWidget {
  const Cardnamepg({super.key});

  @override
  State<Cardnamepg> createState() => _CardnamepgState();
}

class _CardnamepgState extends State<Cardnamepg> {
  TextEditingController _cardname = TextEditingController();
  _displayDialog(BuildContext context) async {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Enter Title'),
            content: Column(
              children: [
                TextField(
                  controller: _cardname,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Name',
                  ),
                ),
              ],
            ),
            actions: <Widget>[
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Foodpg()));
                  },
                  child: Text('Submit'))
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
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
                      top: 50.v,
                      left: 50.h,
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Cardnamepg()));
                        },
                        child: Text(
                          'Enter your card title',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                      )),
                  Positioned(
                      top: 150.v,
                      left: 120.h,
                      child: IconButton(
                          onPressed: () {
                            _displayDialog(context);
                          },
                          icon: Icon(
                            Icons.add,
                            color: Colors.amber,
                            size: 60,
                          ))),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
