import 'package:flutter/material.dart';

Container tripleHorizontalPage() {
  return Container(
    height: 150,
    margin: EdgeInsets.only(top: 380),
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: [
        SizedBox(width: 20,),
        Container(
          width: 355,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            color: Colors.white,
            borderOnForeground: true,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundColor:
                  Colors.blueAccent[800],
                  child: Icon(Icons.wb_cloudy, size: 40,),
                ),
                SizedBox(width: 15,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('На этой неделе дожди;'),
                    Text('+11...+17°; слабый ветер до'),
                    Text('5 м/с'),
                    TextButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Text('Подробный прогноз'),
                            SizedBox(width: 5,),
                            Icon(Icons.keyboard_arrow_right),
                          ],
                        )
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        Container(
          width: 355,
          child: Image.asset('assets/images/img_8.jpg',width: 355, height: 150,),
        ),
        Container(
          width: 355,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            color: Colors.white,
            borderOnForeground: true,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundColor:
                  Colors.blueAccent[800],
                  child: Icon(Icons.wb_cloudy, size: 40,),
                ),
                SizedBox(width: 15,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('На этой неделе дожди;'),
                    Text('+11...+17°; слабый ветер до'),
                    Text('5 м/с'),
                    TextButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Text('Подробный прогноз'),
                            SizedBox(width: 5,),
                            Icon(Icons.keyboard_arrow_right),
                          ],
                        )
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        SizedBox(width: 20,),
      ],
    ),
  );
}