import 'dart:async';

import 'package:clockapp_dailytask/uttils/global.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class digitalPage extends StatefulWidget {
  const digitalPage({super.key});

  @override
  State<digitalPage> createState() => _digitalPageState();
}

class _digitalPageState extends State<digitalPage> {
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
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(bgImage()),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '${(dateTime.hour > 12) ? (dateTime.hour % 12).toString().padLeft(2, '0') : (dateTime.hour).toString().padLeft(2, '0')}',
                  style: const TextStyle(
                      fontSize: 65,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  '${dateTime.minute.toString().padLeft(2, '0')}',
                  style: const TextStyle(
                      // color: Color(0xff333333),
                      color: Colors.white,
                      fontSize: 65,
                      fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Text(
                    'sec: ${dateTime.second.toString().padLeft(2, '0')} ${(dateTime.hour <= 12) ? ('AM') : ('PM')}',
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text(
                    '${daysList[dateTime.weekday - 1]} ${dateTime.day}:${monthList[dateTime.month - 1]}',
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        height: -0.1),
                  ),
                ),
              ],
            ),

            // Column(
            //   children: [
            //
            //   ],
            // ),
            const Spacer(
              flex: 4,
            ),

            OutlinedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/clock');
              },
              child: Text(
                'next',
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
