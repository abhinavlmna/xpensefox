import 'package:flutter/material.dart';
import 'package:xpensefox/Screens/firstcard/firstcard.dart';
import 'package:xpensefox/app/sizeutils.dart';

class Registrnscndpg extends StatefulWidget {
  const Registrnscndpg({super.key});

  @override
  State<Registrnscndpg> createState() => _RegistrnscndpgState();
}

class _RegistrnscndpgState extends State<Registrnscndpg> {
  TextEditingController _username = TextEditingController();
  TextEditingController _password = TextEditingController();
  TextEditingController _confrmpswrd = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 0),
            child: Text(
              'Username',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15.h, right: 15.h),
            child: TextFormField(
              controller: _username,
              keyboardType: TextInputType.name,
              onChanged: (value) {
                _formKey.currentState?.validate();
              },
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  filled: true,
                  fillColor: Colors.yellow),
            ),
          ),
          SizedBox(
            height: 30.v,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 0),
            child: Text(
              'Password',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15.h, right: 15.h),
            child: TextFormField(
              controller: _password,
              keyboardType: TextInputType.emailAddress,
              onChanged: (value) {
                _formKey.currentState?.validate();
              },
              validator: (String? value) {
                if (value!.length == 0) {
                  return 'Must fill this field';
                } else {
                  return null;
                }
              },
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  filled: true,
                  fillColor: Colors.yellow),
            ),
          ),
          SizedBox(
            height: 30.v,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 0),
            child: Text(
              'Confirm password',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15.h, right: 15.h),
            child: TextFormField(
              controller: _confrmpswrd,
              keyboardType: TextInputType.emailAddress,
              onChanged: (value) {
                _formKey.currentState?.validate();
              },
              validator: (String? value) {
                if (value != _password) {
                  return 'password mismatch';
                } else {
                  return null;
                }
              },
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  filled: true,
                  fillColor: Colors.yellow),
            ),
          ),
          // the button is just for navigate.will remove after making the enter key works
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Firstcardpg()));
              },
              icon: Icon(
                Icons.arrow_forward,
                size: 50,
              ))
        ],
      ),
    );
  }
}
