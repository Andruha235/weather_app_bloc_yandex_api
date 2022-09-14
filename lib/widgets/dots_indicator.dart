import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

Container dotsIndicator() {
  return Container(
    margin: EdgeInsets.only(top: 530),
    child: Center(
      child: DotsIndicator(
        dotsCount: 3,
        decorator: DotsDecorator(
          activeColor: Colors.black,
        ),
      ),
    ),
  );
}