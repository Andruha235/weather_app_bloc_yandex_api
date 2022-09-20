import 'package:flutter/material.dart';

Container tenDaysForecast() {
  return Container(
    width: 392,
    margin: EdgeInsets.only(top: 700),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            SizedBox(
              width: 20,
            ),
            Text('Прогноз на 10 дней', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),),
          ],
        ),
        daysData(),
        SizedBox(height: 5,),
        daysData(),
        SizedBox(height: 5,),
        daysData(),
        SizedBox(height: 5,),
        daysData(),
        SizedBox(height: 5,),
        daysData(),
        SizedBox(height: 5,),
        daysData(),
        SizedBox(height: 5,),
        daysData(),
        SizedBox(height: 5,),
        daysData(),
        SizedBox(height: 5,),
        daysData(),
        SizedBox(height: 5,),
        daysData(),
        SizedBox(height: 5,),
        gotoMonthsData(),
      ],
    ),
  );
}

Container gotoMonthsData() {
  return Container(
    padding: EdgeInsets.only(left: 16, right: 16),
    width: 392,
    height: 60,
    child: Card(
        child: Center(
          child: Text('Прогноз на месяц>'),
        )
    ),
  );
}

Container daysData() {
  return  Container(
    padding: EdgeInsets.only(left: 16, right: 16),
    width: 392,
    child: Card(
      child: Row(
        children: [
          SizedBox(width: 10,),
          Column(
            children: [
              SizedBox(height: 5,),
              Text('5 сентября', style: TextStyle(color: Colors.grey),),
              SizedBox(height: 5,),
              Text('Сегодня', style: TextStyle(fontWeight: FontWeight.bold),),
              SizedBox(height: 7,),
            ],
          ),
          SizedBox(
            width: 120,
          ),
          Icon(Icons.wb_cloudy, color: Colors.blue[300],),
          SizedBox(
            width: 25,
          ),
          Text('+11°', style: TextStyle(fontWeight: FontWeight.bold),),
          SizedBox(
            width: 40,
          ),
          Text('+5°', style: TextStyle(color: Colors.grey),),
        ],
      ),
    ),
  );
}