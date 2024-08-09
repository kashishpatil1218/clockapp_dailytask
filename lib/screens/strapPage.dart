import 'dart:async';
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../uttils/global.dart';

class strapPage extends StatefulWidget {
  const strapPage({super.key});

  @override
  State<strapPage> createState() => _strapPageState();
}

class _strapPageState extends State<strapPage> {
  void strapwatch() {
    Timer.periodic(
      Duration(seconds: 1),
      (timer) {
        setState(() {
          if (count) {
            second++;
            if (second > 59) {
              minute++;
              second = 0;
              if (minute > 59) {
                hour++;
                minute = 0;
                second = 0;
              }
            }
          }
        });
      },
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    strapwatch();
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
            image: AssetImage(Strap),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 250,
              width: 250,
              decoration: const BoxDecoration(
                // color:Color(0xffD6D6F7),
                color: Colors.white12,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black38,
                    blurRadius: 25,
                    spreadRadius: 5,
                  ),
                ],
              ),
              alignment: Alignment.center,
              child: Text(
                '${hour.toString().padLeft(2, '0')} : ${minute.toString().padLeft(2, '0')} : ${second.toString().padLeft(2, '0')}',
                style: const TextStyle(
                    color: Colors.white, fontSize: 35, height: 1),
              ),

            ),
            // CircularProgressIndicator(
            //   strokeWidth: 2,
            //   color: Colors.white,
            //   value: 1,
            //   strokeAlign: 80,
            // valueColor:  ,

            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      count = true;
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white24, width: 2),
                        color: Colors.black45,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Icon(
                        Icons.play_arrow,
                        color: Colors.white,
                        size: 35,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  GestureDetector(
                    onTap: () {
                      count = false;
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white24, width: 2),
                        color: Colors.black45,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Icon(
                        Icons.pause,
                        color: Colors.white,
                        size: 35,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 35),
                    child: GestureDetector(
                      onTap: () {
                        second = 0;
                        minute = 0;
                        hour = 0;
                        count = false;
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white24, width: 2),
                          color: Colors.black45,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Icon(
                          Icons.restart_alt,
                          color: Colors.white,
                          size: 35,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
