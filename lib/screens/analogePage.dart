import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

import '../uttils/global.dart';

class analogePage extends StatefulWidget {
  const analogePage({super.key});

  @override
  State<analogePage> createState() => _analogePageState();
}

class _analogePageState extends State<analogePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer.periodic(
      Duration(seconds: 1),
      (timer) {
        setState(() {
          dateTime = DateTime.now();
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  bgImage(),
                ),
              ),
            ),
          ),
          Container(
            height: 220,
            width: 220,
            decoration: const BoxDecoration(
              // color:Color(0xffD6D6F7),
              color: Colors.white10,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                    color:Colors.black38,
                    blurRadius: 25,
                     spreadRadius:5,
            ),
              ],
            ),
          ),
          Container(
            height: 175,
            width: 175,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.white,width: 2),
            ),
          ),

          Transform.rotate(
            angle: (dateTime.second * 6) * pi / 180,
            child: const VerticalDivider(
              indent: 340,
              endIndent: 405,
              color: Colors.red,
              thickness: 2,
            ),
          ),
          Transform.rotate(
            angle: (dateTime.minute * 6) * pi / 180,
            child: const VerticalDivider(
              indent: 350,
              endIndent: 405,
              color: Colors.white,
              thickness: 3,
            ),
          ),
          Transform.rotate(
            angle: (dateTime.hour * 30) * pi / 180,
            child: const VerticalDivider(
              indent: 370,
              endIndent: 405,
              color: Colors.white,
              thickness: 5,
            ),
          ),
          const CircleAvatar(
            radius: 5,
            backgroundColor: Colors.white,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '${(dateTime.hour > 12) ? (dateTime.hour % 12).toString().padLeft(2, '0') : (dateTime.hour).toString().padLeft(2, '0')}:${dateTime.minute.toString().padLeft(2, '0')}',
                style: const TextStyle(
                  fontSize: 55,
                  height: 18,
                  color: Colors.white,
                ),
              ),
              Text(
                '${(dateTime.hour <= 12) ? ('AM') : ('PM')}',
                style: const TextStyle(color: Colors.white, fontSize: 15,height:64.2),
              )
            ],

          ),

        ],
      ),
    );
  }
}
