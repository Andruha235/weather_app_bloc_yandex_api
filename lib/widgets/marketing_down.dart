import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Container marketing_down() {
  return Container(
    height: 550,
    width: 392,
    margin: EdgeInsets.only(top: 1430, right: 20, left: 20),
    child: Column(
      children: [
        Row(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Image.asset('assets/images/yandex.webp', width: 40, height: 40,)),
            SizedBox(width: 10,),
            Column(
              children: [
                InkWell(
                  child: Text('yandex.ru'),
                  onTap: () => launchUrl(Uri.parse('https://ya.ru/')),
                ),
                SizedBox(width: 10,),
                Text('Реклама', style: TextStyle(color: Colors.grey),),
              ],
            ),
            SizedBox(
              width: 210,
            ),
            CircleAvatar(
                backgroundColor: Colors.grey[400],
                radius: 10,
                child: IconButton(
                  padding: EdgeInsets.zero,
                  icon: Icon(Icons.more_vert, color: Colors.grey[600], size: 18,),
                  onPressed: () {  },)
            ),
          ],
        ),
        ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: Image.asset('assets/images/marketing_image.jpg', width: 360, height: 360,)
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Вакансия пешехода-иследователя', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
            Text('для Яндекс Карт 18+', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
            SizedBox(
              height: 5,
            ),
            Text('Работа для тех кто хорошо знает город: гуляйте,', ),
            Text('выполняйте задания и заробатывайте.',),
            ClipRRect(
              borderRadius: BorderRadius.circular(5000),
              child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(backgroundColor: Colors.yellow[400]),
                  child: Center(
                    child: Text('Подробнее', style: TextStyle(color: Colors.black),),

              )),
            ),
          ],
        )
      ],
    ),
  );
}