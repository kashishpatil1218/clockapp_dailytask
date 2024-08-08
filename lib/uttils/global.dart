import 'package:flutter/material.dart';

String img = "https://i.redd.it/dr8dd018w7w51.gif";
List drawerList = [
  {
    'icon': Icons.interests,
    'name': 'Interests',
  },
  {
    'icon': Icons.play_circle_sharp,
    'name': 'My course',
  },
  {
    'icon': Icons.done_all,
    'name': 'Todo/done',
  },
  {
    'icon': Icons.article,
    'name': 'Onilne Article',
  },
  {
    'icon': Icons.star_rate_rounded,
    'name': 'Rate Us',
  },
  {
    'icon': Icons.support,
    'name': 'Support',
  },
  {
    'icon': Icons.settings,
    'name': 'Settings',
  },
  {
    'icon': Icons.logout,
    'name': 'Log Out',
  },
];
DateTime dateTime = DateTime.now();
List difList = [
  'assets/img/sunrise.jpg',
   'assets/img/@nd.jpg',//fix for 9 to 12
   'assets/img/sunny _anime.jpg',// fix for 12 to 4
   'assets/img/sunset_2.jpg',//fix for 4 to 8
   'assets/img/night_2.jpg',// fix for 9 to 12
  'assets/img/moon_2.jpg',//12 to 6

];
List daysList = [
  'Mon',
  'Tue',
  'Wed',
  'Thu',
  'Fri',
  'Sat',
  'Sun',
];
List monthList = [
  'Jan',
  'Feb',
  'Mar',
  'Apr',
  'May',
  'Jun',
  'Jul',
  'Aug',
  'Sep',
  'Oct',
  'Nov',
  'Dec',
];

bgImage() {
  if (dateTime.hour >= 6 && dateTime.hour < 9)
  {
    return difList[0];
  }
  else if (dateTime.hour >= 9 && dateTime.hour < 12)
  {
    return difList[1];
  }
  else if (dateTime.hour >= 12 && dateTime.hour < 16)
  {
    return difList[2];
  }
  else if (dateTime.hour >= 16 && dateTime.hour < 19)
  {
    return difList[3];
  }
  else if (dateTime.hour >= 19 && dateTime.hour <= 24)
  {
    return difList[4];
  }
  else if (dateTime.hour >0 && dateTime.hour <= 6)
  {
    return difList[5];
  }
}
