import 'package:flutter/material.dart';
import 'package:xpensefox/Screens/registrationscnd/registrationscnd.dart';
import 'package:xpensefox/app/sizeutils.dart';

class Registrationpg extends StatefulWidget {
  const Registrationpg({super.key});

  @override
  State<Registrationpg> createState() => _RegistrationpgState();
}

class _RegistrationpgState extends State<Registrationpg> {
  TextEditingController _phone = TextEditingController();
  TextEditingController _otp = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        key: _formKey,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 0),
            child: Text(
              'Phone number/Email',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15.h, right: 15.h),
            child: TextFormField(
              controller: _phone,
              keyboardType: TextInputType.phone,
              maxLength: 10,
              onChanged: (value) {
                _formKey.currentState?.validate();
              },
              validator: (value) {
                if (value!.isEmpty) {
                  return "Please Enter a Phone Number";
                } else if (value.length < 10) {
                  return "Phone number must has 10 digits";
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
              'OTP',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15.h, right: 15.h),
            child: TextFormField(
              controller: _otp,
              keyboardType: TextInputType.phone,
              maxLength: 4,
              onChanged: (value) {
                _formKey.currentState?.validate();
              },
              // validator: (value) {
              //   if (value!.isEmpty) {
              //     return "Please Enter a Phone Number";
              //   } else if (value.length < 10) {
              //     return "Phone number must has 10 digits";
              //   }
              // },
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
                    MaterialPageRoute(builder: (context) => Registrnscndpg()));
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
