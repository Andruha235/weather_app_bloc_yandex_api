import 'package:flutter/material.dart';

Container basicParametr() {
  return Container(
    margin: EdgeInsets.symmetric(
        vertical: 130, horizontal: 20),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '+9°',
              style: TextStyle(
                  fontSize: 40, color: Colors.white),
            ),
            Icon(
              Icons.wb_cloudy,
              size: 32,
              color: Colors.white,
            ),
          ],
        ),
        Text(
          'Небольшой дождь',
          style: TextStyle(
              fontSize: 20, color: Colors.white),
        ),
        Text(
          'Ощущается как +5°',
          style: TextStyle(
              fontSize: 20, color: Colors.white),
        ),
      ],
    ),
  );
}