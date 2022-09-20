import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Container horizontal_scroll_weather_24h() {
  return Container(
    height: 100,
    margin: EdgeInsets.only(top: 250),
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: [
        SizedBox(width: 20,),
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(Icons.storm, color: Colors.white,),
                  Text('4 м/c, СЗ', style: TextStyle(color: Colors.white),),
                  Icon(Icons.near_me, color: Colors.white),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.speed, color: Colors.white),
                  Text('735 мм рт. ст.', style: TextStyle(color: Colors.white),),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.water_drop, color: Colors.white),
                  Text('79%', style: TextStyle(color: Colors.white),),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.waves, color: Colors.white),
                  Text('5°', style: TextStyle(color: Colors.white),),
                ],
              ),
            ],
          ),
        ),
        SizedBox(width: 75,),
        Container(
          child: Row(
            children: [
              hourData(),
              const SizedBox(width: 20,),
              hourData(),
              const SizedBox(width: 20,),
              hourData(),
              const SizedBox(width: 20,),
              hourData(),
              const SizedBox(width: 20,),
              hourData(),
              const SizedBox(width: 20,),
              hourData(),
              const SizedBox(width: 20,),
              hourData(),
              const SizedBox(width: 20,),
              hourData(),
              const SizedBox(width: 20,),
              hourData(),
              const SizedBox(width: 20,),
              hourData(),
              const SizedBox(width: 20,),
              hourData(),
              const SizedBox(width: 20,),
              hourData(),
              const SizedBox(width: 20,),
              hourData(),
              const SizedBox(width: 20,),
              hourData(),
              const SizedBox(width: 20,),
              hourData(),
              const SizedBox(width: 20,),
              hourData(),
              const SizedBox(width: 20,),
              hourData(),
              const SizedBox(width: 20,),
              hourData(),
              const SizedBox(width: 20,),
              hourData(),
              const SizedBox(width: 20,),
              hourData(),
              const SizedBox(width: 20,),
              hourData(),
              const SizedBox(width: 20,),
              hourData(),
              const SizedBox(width: 20,),
              hourData(),
              const SizedBox(width: 20,),
              hourData(),
              const SizedBox(width: 20,),
              hourData(),
              const SizedBox(width: 20,),
              hourData(),
              const SizedBox(width: 20,),
              hourData(),
              const SizedBox(width: 20,),
            ],
          ),
        )
      ],
    ),
  );
}

Column hourData() {
  return Column(
    children: [
      Text('16:00',style:  TextStyle(fontSize: 15, color: Colors.white),),
      const SizedBox(height: 14,),
      Icon(Icons.wb_cloudy, color: Colors.white,),
      const SizedBox(height: 15,),
      Text('+9°',style:  TextStyle(fontSize: 15, color: Colors.white),),
    ],
  );
}