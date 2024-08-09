import 'dart:async';
import 'dart:math';

import 'package:flutter/cupertino.dart';
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
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
            fit: BoxFit.cover,
            opacity: 0.6,
            image: AssetImage(
              bgImage(),
            ),
          ),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: 220,
              width: 220,
              decoration: const BoxDecoration(
                // color:Color(0xffD6D6F7),
                color: Colors.white10,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black38,
                    blurRadius: 25,
                    spreadRadius: 5,
                  ),
                ],
              ),
            ),
            Container(
              height: 175,
              width: 175,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white, width: 2),
              ),
            ),
            Transform.rotate(
              angle: (dateTime.second * 6) * pi / 180,
              child: VerticalDivider(
                indent: 340,
                endIndent: 405,
                color: Colors.red,
                thickness: 2,
              ),
            ),
            Transform.rotate(
              angle: (dateTime.minute * 6) * pi / 180,
              child: VerticalDivider(
                indent: 350,
                endIndent: 405,
                color: Colors.white,
                thickness: 3,
              ),
            ),
            Transform.rotate(
              angle: (dateTime.hour * 30 + dateTime.minute * 0.5) * pi / 180,
              child: VerticalDivider(
                indent: 370,
                endIndent: 405,
                color: Colors.white,
                thickness: 5,
              ),
            ),
            ...List.generate(
              60,
              (index) => Transform.rotate(
                angle: (index * 30) * pi / 60,
                child: VerticalDivider(
                  thickness: 3,
                  color: Colors.white,
                  endIndent: 489,
                  indent: 331,
                ),
              ),
            ),
            CircleAvatar(
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
                    height: -7,
                    color: Colors.white,
                  ),
                ),
                Text(
                  '${(dateTime.hour <= 12) ? ('AM') : ('PM')}',
                  style: const TextStyle(
                      color: Colors.white, fontSize: 15, height: -24),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 400),
              child: Text(
                '${daysList[dateTime.weekday - 1]} ${dateTime.day}:${monthList[dateTime.month - 1]}',
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    height: -32),
              ),
            ),

          ],
        ),
      ),
      floatingActionButton:Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 140),
            child: OutlinedButton(onPressed: () {
            Navigator.of(context).pushNamed('/strap');
            }, child: Text('Next',style: TextStyle(color: Colors.white),)),
          )
        ],
      ) ,
    );
  }
}
